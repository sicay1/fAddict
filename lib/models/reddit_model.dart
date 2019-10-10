// To parse this JSON data, do
//
//     final redditmodel = redditmodelFromJson(jsonString);

import 'dart:convert';

class Redditmodel {
    String domain;
    bool isCrosspostable;
    bool isMeta;
    bool isStickied;
    dynamic domainOverride;
    dynamic callToAction;
    List<dynamic> eventsOnRender;
    bool isScoreHidden;
    bool saved;
    int numComments;
    dynamic upvoteRatio;
    String author;
    dynamic postCategories;
    Media media;
    int numCrossposts;
    bool isSponsored;
    String id;
    dynamic contentCategories;
    Source source;
    bool isLocked;
    int score;
    bool isSpoiler;
    bool isArchived;
    bool contestMode;
    Preview preview;
    String liveCommentsWebsocket;
    Preview thumbnail;
    BelongsTo belongsTo;
    dynamic crosspostRootId;
    dynamic crosspostParentId;
    bool sendReplies;
    int goldCount;
    dynamic gildings;
    String authorId;
    bool isNsfw;
    bool isMediaOnly;
    String postId;
    dynamic suggestedSort;
    bool hidden;
    int viewCount;
    String permalink;
    int created;
    String title;
    List<dynamic> events;
    bool isOriginalContent;
    dynamic distinguishType;
    dynamic discussionType;
    int voteState;
    List<Flair> flair;
    bool isBlank;
    dynamic numDuplicates;

    Redditmodel({
        this.domain,
        this.isCrosspostable,
        this.isMeta,
        this.isStickied,
        this.domainOverride,
        this.callToAction,
        this.eventsOnRender,
        this.isScoreHidden,
        this.saved,
        this.numComments,
        this.upvoteRatio,
        this.author,
        this.postCategories,
        this.media,
        this.numCrossposts,
        this.isSponsored,
        this.id,
        this.contentCategories,
        this.source,
        this.isLocked,
        this.score,
        this.isSpoiler,
        this.isArchived,
        this.contestMode,
        this.preview,
        this.liveCommentsWebsocket,
        this.thumbnail,
        this.belongsTo,
        this.crosspostRootId,
        this.crosspostParentId,
        this.sendReplies,
        this.goldCount,
        this.gildings,
        this.authorId,
        this.isNsfw,
        this.isMediaOnly,
        this.postId,
        this.suggestedSort,
        this.hidden,
        this.viewCount,
        this.permalink,
        this.created,
        this.title,
        this.events,
        this.isOriginalContent,
        this.distinguishType,
        this.discussionType,
        this.voteState,
        this.flair,
        this.isBlank,
        this.numDuplicates,
    });

    factory Redditmodel.fromJson(String str) => Redditmodel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Redditmodel.fromMap(Map<String, dynamic> json) => Redditmodel(
        domain: json["domain"] == null ? null : json["domain"],
        isCrosspostable: json["isCrosspostable"] == null ? null : json["isCrosspostable"],
        isMeta: json["isMeta"] == null ? null : json["isMeta"],
        isStickied: json["isStickied"] == null ? null : json["isStickied"],
        domainOverride: json["domainOverride"],
        callToAction: json["callToAction"],
        eventsOnRender: json["eventsOnRender"] == null ? null : List<dynamic>.from(json["eventsOnRender"].map((x) => x)),
        isScoreHidden: json["isScoreHidden"] == null ? null : json["isScoreHidden"],
        saved: json["saved"] == null ? null : json["saved"],
        numComments: json["numComments"] == null ? null : json["numComments"],
        upvoteRatio: json["upvoteRatio"],
        author: json["author"] == null ? null : json["author"],
        postCategories: json["postCategories"],
        media: json["media"] == null ? null : Media.fromMap(json["media"]),
        numCrossposts: json["numCrossposts"] == null ? null : json["numCrossposts"],
        isSponsored: json["isSponsored"] == null ? null : json["isSponsored"],
        id: json["id"] == null ? null : json["id"],
        contentCategories: json["contentCategories"],
        source: json["source"] == null ? null : Source.fromMap(json["source"]),
        isLocked: json["isLocked"] == null ? null : json["isLocked"],
        score: json["score"] == null ? null : json["score"],
        isSpoiler: json["isSpoiler"] == null ? null : json["isSpoiler"],
        isArchived: json["isArchived"] == null ? null : json["isArchived"],
        contestMode: json["contestMode"] == null ? null : json["contestMode"],
        preview: json["preview"] == null ? null : Preview.fromMap(json["preview"]),
        liveCommentsWebsocket: json["liveCommentsWebsocket"] == null ? null : json["liveCommentsWebsocket"],
        thumbnail: json["thumbnail"] == null ? null : Preview.fromMap(json["thumbnail"]),
        belongsTo: json["belongsTo"] == null ? null : BelongsTo.fromMap(json["belongsTo"]),
        crosspostRootId: json["crosspostRootId"],
        crosspostParentId: json["crosspostParentId"],
        sendReplies: json["sendReplies"] == null ? null : json["sendReplies"],
        goldCount: json["goldCount"] == null ? null : json["goldCount"],
        gildings: json["gildings"],
        authorId: json["authorId"] == null ? null : json["authorId"],
        isNsfw: json["isNSFW"] == null ? null : json["isNSFW"],
        isMediaOnly: json["isMediaOnly"] == null ? null : json["isMediaOnly"],
        postId: json["postId"] == null ? null : json["postId"],
        suggestedSort: json["suggestedSort"],
        hidden: json["hidden"] == null ? null : json["hidden"],
        viewCount: json["viewCount"] == null ? null : json["viewCount"],
        permalink: json["permalink"] == null ? null : json["permalink"],
        created: json["created"] == null ? null : json["created"],
        title: json["title"] == null ? null : json["title"],
        events: json["events"] == null ? null : List<dynamic>.from(json["events"].map((x) => x)),
        isOriginalContent: json["isOriginalContent"] == null ? null : json["isOriginalContent"],
        distinguishType: json["distinguishType"],
        discussionType: json["discussionType"],
        voteState: json["voteState"] == null ? null : json["voteState"],
        flair: json["flair"] == null ? null : List<Flair>.from(json["flair"].map((x) => Flair.fromMap(x))),
        isBlank: json["isBlank"] == null ? null : json["isBlank"],
        numDuplicates: json["numDuplicates"],
    );

    Map<String, dynamic> toMap() => {
        "domain": domain == null ? null : domain,
        "isCrosspostable": isCrosspostable == null ? null : isCrosspostable,
        "isMeta": isMeta == null ? null : isMeta,
        "isStickied": isStickied == null ? null : isStickied,
        "domainOverride": domainOverride,
        "callToAction": callToAction,
        "eventsOnRender": eventsOnRender == null ? null : List<dynamic>.from(eventsOnRender.map((x) => x)),
        "isScoreHidden": isScoreHidden == null ? null : isScoreHidden,
        "saved": saved == null ? null : saved,
        "numComments": numComments == null ? null : numComments,
        "upvoteRatio": upvoteRatio,
        "author": author == null ? null : author,
        "postCategories": postCategories,
        "media": media == null ? null : media.toMap(),
        "numCrossposts": numCrossposts == null ? null : numCrossposts,
        "isSponsored": isSponsored == null ? null : isSponsored,
        "id": id == null ? null : id,
        "contentCategories": contentCategories,
        "source": source == null ? null : source.toMap(),
        "isLocked": isLocked == null ? null : isLocked,
        "score": score == null ? null : score,
        "isSpoiler": isSpoiler == null ? null : isSpoiler,
        "isArchived": isArchived == null ? null : isArchived,
        "contestMode": contestMode == null ? null : contestMode,
        "preview": preview == null ? null : preview.toMap(),
        "liveCommentsWebsocket": liveCommentsWebsocket == null ? null : liveCommentsWebsocket,
        "thumbnail": thumbnail == null ? null : thumbnail.toMap(),
        "belongsTo": belongsTo == null ? null : belongsTo.toMap(),
        "crosspostRootId": crosspostRootId,
        "crosspostParentId": crosspostParentId,
        "sendReplies": sendReplies == null ? null : sendReplies,
        "goldCount": goldCount == null ? null : goldCount,
        "gildings": gildings,
        "authorId": authorId == null ? null : authorId,
        "isNSFW": isNsfw == null ? null : isNsfw,
        "isMediaOnly": isMediaOnly == null ? null : isMediaOnly,
        "postId": postId == null ? null : postId,
        "suggestedSort": suggestedSort,
        "hidden": hidden == null ? null : hidden,
        "viewCount": viewCount == null ? null : viewCount,
        "permalink": permalink == null ? null : permalink,
        "created": created == null ? null : created,
        "title": title == null ? null : title,
        "events": events == null ? null : List<dynamic>.from(events.map((x) => x)),
        "isOriginalContent": isOriginalContent == null ? null : isOriginalContent,
        "distinguishType": distinguishType,
        "discussionType": discussionType,
        "voteState": voteState == null ? null : voteState,
        "flair": flair == null ? null : List<dynamic>.from(flair.map((x) => x.toMap())),
        "isBlank": isBlank == null ? null : isBlank,
        "numDuplicates": numDuplicates,
    };
}

class BelongsTo {
    String type;
    String id;

    BelongsTo({
        this.type,
        this.id,
    });

    factory BelongsTo.fromJson(String str) => BelongsTo.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory BelongsTo.fromMap(Map<String, dynamic> json) => BelongsTo(
        type: json["type"] == null ? null : json["type"],
        id: json["id"] == null ? null : json["id"],
    );

    Map<String, dynamic> toMap() => {
        "type": type == null ? null : type,
        "id": id == null ? null : id,
    };
}

class Flair {
    String text;
    String textColor;
    String type;
    String backgroundColor;
    String templateId;

    Flair({
        this.text,
        this.textColor,
        this.type,
        this.backgroundColor,
        this.templateId,
    });

    factory Flair.fromJson(String str) => Flair.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Flair.fromMap(Map<String, dynamic> json) => Flair(
        text: json["text"] == null ? null : json["text"],
        textColor: json["textColor"] == null ? null : json["textColor"],
        type: json["type"] == null ? null : json["type"],
        backgroundColor: json["backgroundColor"] == null ? null : json["backgroundColor"],
        templateId: json["templateId"] == null ? null : json["templateId"],
    );

    Map<String, dynamic> toMap() => {
        "text": text == null ? null : text,
        "textColor": textColor == null ? null : textColor,
        "type": type == null ? null : type,
        "backgroundColor": backgroundColor == null ? null : backgroundColor,
        "templateId": templateId == null ? null : templateId,
    };
}

class Media {
    dynamic obfuscated;
    String content;
    int width;
    String provider;
    String type;
    int height;

    Media({
        this.obfuscated,
        this.content,
        this.width,
        this.provider,
        this.type,
        this.height,
    });

    factory Media.fromJson(String str) => Media.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Media.fromMap(Map<String, dynamic> json) => Media(
        obfuscated: json["obfuscated"],
        content: json["content"] == null ? null : json["content"],
        width: json["width"] == null ? null : json["width"],
        provider: json["provider"] == null ? null : json["provider"],
        type: json["type"] == null ? null : json["type"],
        height: json["height"] == null ? null : json["height"],
    );

    Map<String, dynamic> toMap() => {
        "obfuscated": obfuscated,
        "content": content == null ? null : content,
        "width": width == null ? null : width,
        "provider": provider == null ? null : provider,
        "type": type == null ? null : type,
        "height": height == null ? null : height,
    };
}

class Preview {
    String url;
    int width;
    int height;

    Preview({
        this.url,
        this.width,
        this.height,
    });

    factory Preview.fromJson(String str) => Preview.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Preview.fromMap(Map<String, dynamic> json) => Preview(
        url: json["url"] == null ? null : json["url"],
        width: json["width"] == null ? null : json["width"],
        height: json["height"] == null ? null : json["height"],
    );

    Map<String, dynamic> toMap() => {
        "url": url == null ? null : url,
        "width": width == null ? null : width,
        "height": height == null ? null : height,
    };
}

class Source {
    String url;
    String outboundUrl;
    int outboundUrlCreated;
    String displayText;
    int outboundUrlExpiration;
    int outboundUrlReceived;

    Source({
        this.url,
        this.outboundUrl,
        this.outboundUrlCreated,
        this.displayText,
        this.outboundUrlExpiration,
        this.outboundUrlReceived,
    });

    factory Source.fromJson(String str) => Source.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Source.fromMap(Map<String, dynamic> json) => Source(
        url: json["url"] == null ? null : json["url"],
        outboundUrl: json["outboundUrl"] == null ? null : json["outboundUrl"],
        outboundUrlCreated: json["outboundUrlCreated"] == null ? null : json["outboundUrlCreated"],
        displayText: json["displayText"] == null ? null : json["displayText"],
        outboundUrlExpiration: json["outboundUrlExpiration"] == null ? null : json["outboundUrlExpiration"],
        outboundUrlReceived: json["outboundUrlReceived"] == null ? null : json["outboundUrlReceived"],
    );

    Map<String, dynamic> toMap() => {
        "url": url == null ? null : url,
        "outboundUrl": outboundUrl == null ? null : outboundUrl,
        "outboundUrlCreated": outboundUrlCreated == null ? null : outboundUrlCreated,
        "displayText": displayText == null ? null : displayText,
        "outboundUrlExpiration": outboundUrlExpiration == null ? null : outboundUrlExpiration,
        "outboundUrlReceived": outboundUrlReceived == null ? null : outboundUrlReceived,
    };
}
