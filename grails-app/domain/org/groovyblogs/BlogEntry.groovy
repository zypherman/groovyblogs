package org.groovyblogs

class BlogEntry {

    String title
    String description
    String link
    Date dateAdded = new Date()
    Integer hitCount = 0
    String language
    String hash
    SortedSet<Date> visits
    int sourceStatus
    Date sourceStatusDate

    static hasMany = [visits: Date]

    static searchable = {
        only = ['title', 'description']
    }

    // info is used for sticking stuff like "Only showing 3 entries for this user"
    static transients = ["groovyRelated","sourceAvailable"]

    static belongsTo = [blog: Blog]

    static constraints = {
        language(nullable: true)
        link(unique: true)
        hash(nullable: true)
        sourceStatus nullable: true
        sourceStatusDate nullable: true
    }

    static mapping = {
        description sqlType: 'LONGTEXT'
        link index: 'Link_Idx'
        hash index: 'Hash_Idx'
        visits cascade: "all-delete-orphan"
    }

    boolean isGroovyRelated() {

        def keywords = Tag.findAllByApproved(true)*.tag

        return keywords.any { keyword ->
            keyword = /\b${keyword}\b/
            return title?.toLowerCase() =~ keyword || description?.toLowerCase() =~ keyword
        }
    }

    boolean isSourceAvailable() {
        sourceStatus == 200
    }

}
