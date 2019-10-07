// To parse this JSON data, do
//
//     final mediummodel = mediummodelFromJson(jsonString);

import 'dart:convert';

class Mediummodel {
    References references;
    Paging paging;
    Collection collection;
    Header header;
    List<StreamItem> streamItems;

    Mediummodel({
        this.references,
        this.paging,
        this.collection,
        this.header,
        this.streamItems,
    });

    factory Mediummodel.fromJson(String str) => Mediummodel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Mediummodel.fromMap(Map<String, dynamic> json) => Mediummodel(
        references: json["references"] == null ? null : References.fromMap(json["references"]),
        paging: json["paging"] == null ? null : Paging.fromMap(json["paging"]),
        collection: json["collection"] == null ? null : Collection.fromMap(json["collection"]),
        header: json["header"] == null ? null : Header.fromMap(json["header"]),
        streamItems: json["streamItems"] == null ? null : List<StreamItem>.from(json["streamItems"].map((x) => StreamItem.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "references": references == null ? null : references.toMap(),
        "paging": paging == null ? null : paging.toMap(),
        "collection": collection == null ? null : collection.toMap(),
        "header": header == null ? null : header.toMap(),
        "streamItems": streamItems == null ? null : List<dynamic>.from(streamItems.map((x) => x.toMap())),
    };
}

class Collection {
    Id id;
    String name;
    String slug;
    List<String> tags;
    String creatorId;
    String description;
    String shortDescription;
    AmpLogo image;
    CollectionMetadata metadata;
    CollectionVirtuals virtuals;
    AmpLogo logo;
    String twitterUsername;
    String facebookPageName;
    String publicEmail;
    String collectionMastheadId;
    List<CollectionSection> sections;
    String tintColor;
    bool lightText;
    AmpLogo favicon;
    ColorPalette colorPalette;
    List<NavItem> navItems;
    int colorBehavior;
    int instantArticlesState;
    int acceleratedMobilePagesState;
    AmpLogo ampLogo;
    Header header;
    String type;

    Collection({
        this.id,
        this.name,
        this.slug,
        this.tags,
        this.creatorId,
        this.description,
        this.shortDescription,
        this.image,
        this.metadata,
        this.virtuals,
        this.logo,
        this.twitterUsername,
        this.facebookPageName,
        this.publicEmail,
        this.collectionMastheadId,
        this.sections,
        this.tintColor,
        this.lightText,
        this.favicon,
        this.colorPalette,
        this.navItems,
        this.colorBehavior,
        this.instantArticlesState,
        this.acceleratedMobilePagesState,
        this.ampLogo,
        this.header,
        this.type,
    });

    factory Collection.fromJson(String str) => Collection.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Collection.fromMap(Map<String, dynamic> json) => Collection(
        id: json["id"] == null ? null : idValues.map[json["id"]],
        name: json["name"] == null ? null : json["name"],
        slug: json["slug"] == null ? null : json["slug"],
        tags: json["tags"] == null ? null : List<String>.from(json["tags"].map((x) => x)),
        creatorId: json["creatorId"] == null ? null : json["creatorId"],
        description: json["description"] == null ? null : json["description"],
        shortDescription: json["shortDescription"] == null ? null : json["shortDescription"],
        image: json["image"] == null ? null : AmpLogo.fromMap(json["image"]),
        metadata: json["metadata"] == null ? null : CollectionMetadata.fromMap(json["metadata"]),
        virtuals: json["virtuals"] == null ? null : CollectionVirtuals.fromMap(json["virtuals"]),
        logo: json["logo"] == null ? null : AmpLogo.fromMap(json["logo"]),
        twitterUsername: json["twitterUsername"] == null ? null : json["twitterUsername"],
        facebookPageName: json["facebookPageName"] == null ? null : json["facebookPageName"],
        publicEmail: json["publicEmail"] == null ? null : json["publicEmail"],
        collectionMastheadId: json["collectionMastheadId"] == null ? null : json["collectionMastheadId"],
        sections: json["sections"] == null ? null : List<CollectionSection>.from(json["sections"].map((x) => CollectionSection.fromMap(x))),
        tintColor: json["tintColor"] == null ? null : json["tintColor"],
        lightText: json["lightText"] == null ? null : json["lightText"],
        favicon: json["favicon"] == null ? null : AmpLogo.fromMap(json["favicon"]),
        colorPalette: json["colorPalette"] == null ? null : ColorPalette.fromMap(json["colorPalette"]),
        navItems: json["navItems"] == null ? null : List<NavItem>.from(json["navItems"].map((x) => NavItem.fromMap(x))),
        colorBehavior: json["colorBehavior"] == null ? null : json["colorBehavior"],
        instantArticlesState: json["instantArticlesState"] == null ? null : json["instantArticlesState"],
        acceleratedMobilePagesState: json["acceleratedMobilePagesState"] == null ? null : json["acceleratedMobilePagesState"],
        ampLogo: json["ampLogo"] == null ? null : AmpLogo.fromMap(json["ampLogo"]),
        header: json["header"] == null ? null : Header.fromMap(json["header"]),
        type: json["type"] == null ? null : json["type"],
    );

    Map<String, dynamic> toMap() => {
        "id": id == null ? null : idValues.reverse[id],
        "name": name == null ? null : name,
        "slug": slug == null ? null : slug,
        "tags": tags == null ? null : List<dynamic>.from(tags.map((x) => x)),
        "creatorId": creatorId == null ? null : creatorId,
        "description": description == null ? null : description,
        "shortDescription": shortDescription == null ? null : shortDescription,
        "image": image == null ? null : image.toMap(),
        "metadata": metadata == null ? null : metadata.toMap(),
        "virtuals": virtuals == null ? null : virtuals.toMap(),
        "logo": logo == null ? null : logo.toMap(),
        "twitterUsername": twitterUsername == null ? null : twitterUsername,
        "facebookPageName": facebookPageName == null ? null : facebookPageName,
        "publicEmail": publicEmail == null ? null : publicEmail,
        "collectionMastheadId": collectionMastheadId == null ? null : collectionMastheadId,
        "sections": sections == null ? null : List<dynamic>.from(sections.map((x) => x.toMap())),
        "tintColor": tintColor == null ? null : tintColor,
        "lightText": lightText == null ? null : lightText,
        "favicon": favicon == null ? null : favicon.toMap(),
        "colorPalette": colorPalette == null ? null : colorPalette.toMap(),
        "navItems": navItems == null ? null : List<dynamic>.from(navItems.map((x) => x.toMap())),
        "colorBehavior": colorBehavior == null ? null : colorBehavior,
        "instantArticlesState": instantArticlesState == null ? null : instantArticlesState,
        "acceleratedMobilePagesState": acceleratedMobilePagesState == null ? null : acceleratedMobilePagesState,
        "ampLogo": ampLogo == null ? null : ampLogo.toMap(),
        "header": header == null ? null : header.toMap(),
        "type": type == null ? null : type,
    };
}

class AmpLogo {
    String imageId;
    String filter;
    String backgroundSize;
    int originalWidth;
    int originalHeight;
    Strategy strategy;
    int height;
    int width;

    AmpLogo({
        this.imageId,
        this.filter,
        this.backgroundSize,
        this.originalWidth,
        this.originalHeight,
        this.strategy,
        this.height,
        this.width,
    });

    factory AmpLogo.fromJson(String str) => AmpLogo.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory AmpLogo.fromMap(Map<String, dynamic> json) => AmpLogo(
        imageId: json["imageId"] == null ? null : json["imageId"],
        filter: json["filter"] == null ? null : json["filter"],
        backgroundSize: json["backgroundSize"] == null ? null : json["backgroundSize"],
        originalWidth: json["originalWidth"] == null ? null : json["originalWidth"],
        originalHeight: json["originalHeight"] == null ? null : json["originalHeight"],
        strategy: json["strategy"] == null ? null : strategyValues.map[json["strategy"]],
        height: json["height"] == null ? null : json["height"],
        width: json["width"] == null ? null : json["width"],
    );

    Map<String, dynamic> toMap() => {
        "imageId": imageId == null ? null : imageId,
        "filter": filter == null ? null : filter,
        "backgroundSize": backgroundSize == null ? null : backgroundSize,
        "originalWidth": originalWidth == null ? null : originalWidth,
        "originalHeight": originalHeight == null ? null : originalHeight,
        "strategy": strategy == null ? null : strategyValues.reverse[strategy],
        "height": height == null ? null : height,
        "width": width == null ? null : width,
    };
}

enum Strategy { RESAMPLE }

final strategyValues = EnumValues({
    "resample": Strategy.RESAMPLE
});

class ColorPalette {
    Spectrum defaultBackgroundSpectrum;
    Spectrum tintBackgroundSpectrum;
    Spectrum highlightSpectrum;

    ColorPalette({
        this.defaultBackgroundSpectrum,
        this.tintBackgroundSpectrum,
        this.highlightSpectrum,
    });

    factory ColorPalette.fromJson(String str) => ColorPalette.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory ColorPalette.fromMap(Map<String, dynamic> json) => ColorPalette(
        defaultBackgroundSpectrum: json["defaultBackgroundSpectrum"] == null ? null : Spectrum.fromMap(json["defaultBackgroundSpectrum"]),
        tintBackgroundSpectrum: json["tintBackgroundSpectrum"] == null ? null : Spectrum.fromMap(json["tintBackgroundSpectrum"]),
        highlightSpectrum: json["highlightSpectrum"] == null ? null : Spectrum.fromMap(json["highlightSpectrum"]),
    );

    Map<String, dynamic> toMap() => {
        "defaultBackgroundSpectrum": defaultBackgroundSpectrum == null ? null : defaultBackgroundSpectrum.toMap(),
        "tintBackgroundSpectrum": tintBackgroundSpectrum == null ? null : tintBackgroundSpectrum.toMap(),
        "highlightSpectrum": highlightSpectrum == null ? null : highlightSpectrum.toMap(),
    };
}

class Spectrum {
    List<ColorPoint> colorPoints;
    String backgroundColor;

    Spectrum({
        this.colorPoints,
        this.backgroundColor,
    });

    factory Spectrum.fromJson(String str) => Spectrum.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Spectrum.fromMap(Map<String, dynamic> json) => Spectrum(
        colorPoints: json["colorPoints"] == null ? null : List<ColorPoint>.from(json["colorPoints"].map((x) => ColorPoint.fromMap(x))),
        backgroundColor: json["backgroundColor"] == null ? null : json["backgroundColor"],
    );

    Map<String, dynamic> toMap() => {
        "colorPoints": colorPoints == null ? null : List<dynamic>.from(colorPoints.map((x) => x.toMap())),
        "backgroundColor": backgroundColor == null ? null : backgroundColor,
    };
}

class ColorPoint {
    String color;
    double point;

    ColorPoint({
        this.color,
        this.point,
    });

    factory ColorPoint.fromJson(String str) => ColorPoint.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory ColorPoint.fromMap(Map<String, dynamic> json) => ColorPoint(
        color: json["color"] == null ? null : json["color"],
        point: json["point"] == null ? null : json["point"].toDouble(),
    );

    Map<String, dynamic> toMap() => {
        "color": color == null ? null : color,
        "point": point == null ? null : point,
    };
}

class Header {
    String title;
    String description;
    BackgroundImage backgroundImage;
    LogoImage logoImage;
    int alignment;
    int layout;

    Header({
        this.title,
        this.description,
        this.backgroundImage,
        this.logoImage,
        this.alignment,
        this.layout,
    });

    factory Header.fromJson(String str) => Header.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Header.fromMap(Map<String, dynamic> json) => Header(
        title: json["title"] == null ? null : json["title"],
        description: json["description"] == null ? null : json["description"],
        backgroundImage: json["backgroundImage"] == null ? null : BackgroundImage.fromMap(json["backgroundImage"]),
        logoImage: json["logoImage"] == null ? null : LogoImage.fromMap(json["logoImage"]),
        alignment: json["alignment"] == null ? null : json["alignment"],
        layout: json["layout"] == null ? null : json["layout"],
    );

    Map<String, dynamic> toMap() => {
        "title": title == null ? null : title,
        "description": description == null ? null : description,
        "backgroundImage": backgroundImage == null ? null : backgroundImage.toMap(),
        "logoImage": logoImage == null ? null : logoImage.toMap(),
        "alignment": alignment == null ? null : alignment,
        "layout": layout == null ? null : layout,
    };
}

class BackgroundImage {
    String id;
    int originalWidth;
    int originalHeight;
    int focusPercentX;
    double focusPercentY;

    BackgroundImage({
        this.id,
        this.originalWidth,
        this.originalHeight,
        this.focusPercentX,
        this.focusPercentY,
    });

    factory BackgroundImage.fromJson(String str) => BackgroundImage.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory BackgroundImage.fromMap(Map<String, dynamic> json) => BackgroundImage(
        id: json["id"] == null ? null : json["id"],
        originalWidth: json["originalWidth"] == null ? null : json["originalWidth"],
        originalHeight: json["originalHeight"] == null ? null : json["originalHeight"],
        focusPercentX: json["focusPercentX"] == null ? null : json["focusPercentX"],
        focusPercentY: json["focusPercentY"] == null ? null : json["focusPercentY"].toDouble(),
    );

    Map<String, dynamic> toMap() => {
        "id": id == null ? null : id,
        "originalWidth": originalWidth == null ? null : originalWidth,
        "originalHeight": originalHeight == null ? null : originalHeight,
        "focusPercentX": focusPercentX == null ? null : focusPercentX,
        "focusPercentY": focusPercentY == null ? null : focusPercentY,
    };
}

class LogoImage {
    String id;
    int originalWidth;
    int originalHeight;
    String alt;
    bool isFeatured;

    LogoImage({
        this.id,
        this.originalWidth,
        this.originalHeight,
        this.alt,
        this.isFeatured,
    });

    factory LogoImage.fromJson(String str) => LogoImage.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory LogoImage.fromMap(Map<String, dynamic> json) => LogoImage(
        id: json["id"] == null ? null : json["id"],
        originalWidth: json["originalWidth"] == null ? null : json["originalWidth"],
        originalHeight: json["originalHeight"] == null ? null : json["originalHeight"],
        alt: json["alt"] == null ? null : json["alt"],
        isFeatured: json["isFeatured"] == null ? null : json["isFeatured"],
    );

    Map<String, dynamic> toMap() => {
        "id": id == null ? null : id,
        "originalWidth": originalWidth == null ? null : originalWidth,
        "originalHeight": originalHeight == null ? null : originalHeight,
        "alt": alt == null ? null : alt,
        "isFeatured": isFeatured == null ? null : isFeatured,
    };
}

enum Id { THE_86_FB29_D7_CC6_A }

final idValues = EnumValues({
    "86fb29d7cc6a": Id.THE_86_FB29_D7_CC6_A
});

class CollectionMetadata {
    int followerCount;
    int activeAt;

    CollectionMetadata({
        this.followerCount,
        this.activeAt,
    });

    factory CollectionMetadata.fromJson(String str) => CollectionMetadata.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory CollectionMetadata.fromMap(Map<String, dynamic> json) => CollectionMetadata(
        followerCount: json["followerCount"] == null ? null : json["followerCount"],
        activeAt: json["activeAt"] == null ? null : json["activeAt"],
    );

    Map<String, dynamic> toMap() => {
        "followerCount": followerCount == null ? null : followerCount,
        "activeAt": activeAt == null ? null : activeAt,
    };
}

class NavItem {
    int type;
    String title;
    String postId;
    String url;
    String source;
    String topicId;

    NavItem({
        this.type,
        this.title,
        this.postId,
        this.url,
        this.source,
        this.topicId,
    });

    factory NavItem.fromJson(String str) => NavItem.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory NavItem.fromMap(Map<String, dynamic> json) => NavItem(
        type: json["type"] == null ? null : json["type"],
        title: json["title"] == null ? null : json["title"],
        postId: json["postId"] == null ? null : json["postId"],
        url: json["url"] == null ? null : json["url"],
        source: json["source"] == null ? null : json["source"],
        topicId: json["topicId"] == null ? null : json["topicId"],
    );

    Map<String, dynamic> toMap() => {
        "type": type == null ? null : type,
        "title": title == null ? null : title,
        "postId": postId == null ? null : postId,
        "url": url == null ? null : url,
        "source": source == null ? null : source,
        "topicId": topicId == null ? null : topicId,
    };
}

class CollectionSection {
    int type;
    Header collectionHeaderMetadata;
    PostListMetadata postListMetadata;
    PromoMetadata promoMetadata;

    CollectionSection({
        this.type,
        this.collectionHeaderMetadata,
        this.postListMetadata,
        this.promoMetadata,
    });

    factory CollectionSection.fromJson(String str) => CollectionSection.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory CollectionSection.fromMap(Map<String, dynamic> json) => CollectionSection(
        type: json["type"] == null ? null : json["type"],
        collectionHeaderMetadata: json["collectionHeaderMetadata"] == null ? null : Header.fromMap(json["collectionHeaderMetadata"]),
        postListMetadata: json["postListMetadata"] == null ? null : PostListMetadata.fromMap(json["postListMetadata"]),
        promoMetadata: json["promoMetadata"] == null ? null : PromoMetadata.fromMap(json["promoMetadata"]),
    );

    Map<String, dynamic> toMap() => {
        "type": type == null ? null : type,
        "collectionHeaderMetadata": collectionHeaderMetadata == null ? null : collectionHeaderMetadata.toMap(),
        "postListMetadata": postListMetadata == null ? null : postListMetadata.toMap(),
        "promoMetadata": promoMetadata == null ? null : promoMetadata.toMap(),
    };
}

class PostListMetadata {
    int source;
    int layout;
    int number;
    List<String> postIds;
    String sectionHeader;

    PostListMetadata({
        this.source,
        this.layout,
        this.number,
        this.postIds,
        this.sectionHeader,
    });

    factory PostListMetadata.fromJson(String str) => PostListMetadata.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory PostListMetadata.fromMap(Map<String, dynamic> json) => PostListMetadata(
        source: json["source"] == null ? null : json["source"],
        layout: json["layout"] == null ? null : json["layout"],
        number: json["number"] == null ? null : json["number"],
        postIds: json["postIds"] == null ? null : List<String>.from(json["postIds"].map((x) => x)),
        sectionHeader: json["sectionHeader"] == null ? null : json["sectionHeader"],
    );

    Map<String, dynamic> toMap() => {
        "source": source == null ? null : source,
        "layout": layout == null ? null : layout,
        "number": number == null ? null : number,
        "postIds": postIds == null ? null : List<dynamic>.from(postIds.map((x) => x)),
        "sectionHeader": sectionHeader == null ? null : sectionHeader,
    };
}

class PromoMetadata {
    String sectionHeader;
    String promoId;

    PromoMetadata({
        this.sectionHeader,
        this.promoId,
    });

    factory PromoMetadata.fromJson(String str) => PromoMetadata.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory PromoMetadata.fromMap(Map<String, dynamic> json) => PromoMetadata(
        sectionHeader: json["sectionHeader"] == null ? null : json["sectionHeader"],
        promoId: json["promoId"] == null ? null : json["promoId"],
    );

    Map<String, dynamic> toMap() => {
        "sectionHeader": sectionHeader == null ? null : sectionHeader,
        "promoId": promoId == null ? null : promoId,
    };
}

class CollectionVirtuals {
    Map<String, bool> permissions;
    bool isSubscribed;
    bool isEnrolledInHightower;
    bool isEligibleForHightower;
    String mediumNewsletterId;
    bool isSubscribedToCollectionEmails;

    CollectionVirtuals({
        this.permissions,
        this.isSubscribed,
        this.isEnrolledInHightower,
        this.isEligibleForHightower,
        this.mediumNewsletterId,
        this.isSubscribedToCollectionEmails,
    });

    factory CollectionVirtuals.fromJson(String str) => CollectionVirtuals.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory CollectionVirtuals.fromMap(Map<String, dynamic> json) => CollectionVirtuals(
        permissions: json["permissions"] == null ? null : Map.from(json["permissions"]).map((k, v) => MapEntry<String, bool>(k, v)),
        isSubscribed: json["isSubscribed"] == null ? null : json["isSubscribed"],
        isEnrolledInHightower: json["isEnrolledInHightower"] == null ? null : json["isEnrolledInHightower"],
        isEligibleForHightower: json["isEligibleForHightower"] == null ? null : json["isEligibleForHightower"],
        mediumNewsletterId: json["mediumNewsletterId"] == null ? null : json["mediumNewsletterId"],
        isSubscribedToCollectionEmails: json["isSubscribedToCollectionEmails"] == null ? null : json["isSubscribedToCollectionEmails"],
    );

    Map<String, dynamic> toMap() => {
        "permissions": permissions == null ? null : Map.from(permissions).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "isSubscribed": isSubscribed == null ? null : isSubscribed,
        "isEnrolledInHightower": isEnrolledInHightower == null ? null : isEnrolledInHightower,
        "isEligibleForHightower": isEligibleForHightower == null ? null : isEligibleForHightower,
        "mediumNewsletterId": mediumNewsletterId == null ? null : mediumNewsletterId,
        "isSubscribedToCollectionEmails": isSubscribedToCollectionEmails == null ? null : isSubscribedToCollectionEmails,
    };
}

class Paging {
    String path;
    Next next;

    Paging({
        this.path,
        this.next,
    });

    factory Paging.fromJson(String str) => Paging.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Paging.fromMap(Map<String, dynamic> json) => Paging(
        path: json["path"] == null ? null : json["path"],
        next: json["next"] == null ? null : Next.fromMap(json["next"]),
    );

    Map<String, dynamic> toMap() => {
        "path": path == null ? null : path,
        "next": next == null ? null : next.toMap(),
    };
}

class Next {
    String to;
    List<dynamic> ignoredIds;
    int page;

    Next({
        this.to,
        this.ignoredIds,
        this.page,
    });

    factory Next.fromJson(String str) => Next.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Next.fromMap(Map<String, dynamic> json) => Next(
        to: json["to"] == null ? null : json["to"],
        ignoredIds: json["ignoredIds"] == null ? null : List<dynamic>.from(json["ignoredIds"].map((x) => x)),
        page: json["page"] == null ? null : json["page"],
    );

    Map<String, dynamic> toMap() => {
        "to": to == null ? null : to,
        "ignoredIds": ignoredIds == null ? null : List<dynamic>.from(ignoredIds.map((x) => x)),
        "page": page == null ? null : page,
    };
}

class References {
    CollectionClass collection;
    Map<String, User> user;
    Map<String, PortoCamel> post;

    References({
        this.collection,
        this.user,
        this.post,
    });

    factory References.fromJson(String str) => References.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory References.fromMap(Map<String, dynamic> json) => References(
        collection: json["Collection"] == null ? null : CollectionClass.fromMap(json["Collection"]),
        user: json["User"] == null ? null : Map.from(json["User"]).map((k, v) => MapEntry<String, User>(k, User.fromMap(v))),
        post: json["Post"] == null ? null : Map.from(json["Post"]).map((k, v) => MapEntry<String, PortoCamel>(k, PortoCamel.fromMap(v)))
    );

    Map<String, dynamic> toMap() => {
        "Collection": collection == null ? null : collection.toMap(),
        "User": user == null ? null : Map.from(user).map((k, v) => MapEntry<String, dynamic>(k, v.toMap())),
        "Post": post == null ? null : Map.from(post).map((k, v) => MapEntry<String, dynamic>(k, v.toMap())),
    };
}

class CollectionClass {
    Collection the86Fb29D7Cc6A;

    CollectionClass({
        this.the86Fb29D7Cc6A,
    });

    factory CollectionClass.fromJson(String str) => CollectionClass.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory CollectionClass.fromMap(Map<String, dynamic> json) => CollectionClass(
        the86Fb29D7Cc6A: json["86fb29d7cc6a"] == null ? null : Collection.fromMap(json["86fb29d7cc6a"]),
    );

    Map<String, dynamic> toMap() => {
        "86fb29d7cc6a": the86Fb29D7Cc6A == null ? null : the86Fb29D7Cc6A.toMap(),
    };
}

// class Post {
//     PortoCamel a145E4Fbbde1;
//     PortoCamel the1A80Fb74D4E7;
//     PortoCamel ec336Dd3Ca25;
//     PortoCamel the4379Aa1E7Fd5;
//     PortoCamel the2Df185F86E8E;
//     PortoCamel d2E2Aa6C79B8;
//     PortoCamel the1Dc1D33C7Eea;
//     PortoCamel the8Eec77D52Bfb;
//     PortoCamel d843C36001Fb;
//     PortoCamel fbb3A2D4Ede7;
//     PortoCamel the93076A49874F;
//     Ec1C621F48B1 ec1C621F48B1;
//     PortoCamel ab61F4F6D20E;
//     PortoCamel the62A62E0319B5;
//     PortoCamel e05Ea9B46627;
//     PortoCamel f9621F636Fcf;
//     PortoCamel the97298Eda4674;
//     PortoCamel ac18E3E2211F;
//     PortoCamel e3B553F583Ef;
//     PortoCamel the17Fe5154E3F8;
//     PortoCamel d27570E27E24;

//     Post({
//         this.a145E4Fbbde1,
//         this.the1A80Fb74D4E7,
//         this.ec336Dd3Ca25,
//         this.the4379Aa1E7Fd5,
//         this.the2Df185F86E8E,
//         this.d2E2Aa6C79B8,
//         this.the1Dc1D33C7Eea,
//         this.the8Eec77D52Bfb,
//         this.d843C36001Fb,
//         this.fbb3A2D4Ede7,
//         this.the93076A49874F,
//         this.ec1C621F48B1,
//         this.ab61F4F6D20E,
//         this.the62A62E0319B5,
//         this.e05Ea9B46627,
//         this.f9621F636Fcf,
//         this.the97298Eda4674,
//         this.ac18E3E2211F,
//         this.e3B553F583Ef,
//         this.the17Fe5154E3F8,
//         this.d27570E27E24,
//     });

//     factory Post.fromJson(String str) => Post.fromMap(json.decode(str));

//     String toJson() => json.encode(toMap());

//     factory Post.fromMap(Map<String, dynamic> json) => Post(
//         a145E4Fbbde1: json["a145e4fbbde1"] == null ? null : PortoCamel.fromMap(json["a145e4fbbde1"]),
//         the1A80Fb74D4E7: json["1a80fb74d4e7"] == null ? null : PortoCamel.fromMap(json["1a80fb74d4e7"]),
//         ec336Dd3Ca25: json["ec336dd3ca25"] == null ? null : PortoCamel.fromMap(json["ec336dd3ca25"]),
//         the4379Aa1E7Fd5: json["4379aa1e7fd5"] == null ? null : PortoCamel.fromMap(json["4379aa1e7fd5"]),
//         the2Df185F86E8E: json["2df185f86e8e"] == null ? null : PortoCamel.fromMap(json["2df185f86e8e"]),
//         d2E2Aa6C79B8: json["d2e2aa6c79b8"] == null ? null : PortoCamel.fromMap(json["d2e2aa6c79b8"]),
//         the1Dc1D33C7Eea: json["1dc1d33c7eea"] == null ? null : PortoCamel.fromMap(json["1dc1d33c7eea"]),
//         the8Eec77D52Bfb: json["8eec77d52bfb"] == null ? null : PortoCamel.fromMap(json["8eec77d52bfb"]),
//         d843C36001Fb: json["d843c36001fb"] == null ? null : PortoCamel.fromMap(json["d843c36001fb"]),
//         fbb3A2D4Ede7: json["fbb3a2d4ede7"] == null ? null : PortoCamel.fromMap(json["fbb3a2d4ede7"]),
//         the93076A49874F: json["93076a49874f"] == null ? null : PortoCamel.fromMap(json["93076a49874f"]),
//         ec1C621F48B1: json["ec1c621f48b1"] == null ? null : Ec1C621F48B1.fromMap(json["ec1c621f48b1"]),
//         ab61F4F6D20E: json["ab61f4f6d20e"] == null ? null : PortoCamel.fromMap(json["ab61f4f6d20e"]),
//         the62A62E0319B5: json["62a62e0319b5"] == null ? null : PortoCamel.fromMap(json["62a62e0319b5"]),
//         e05Ea9B46627: json["e05ea9b46627"] == null ? null : PortoCamel.fromMap(json["e05ea9b46627"]),
//         f9621F636Fcf: json["f9621f636fcf"] == null ? null : PortoCamel.fromMap(json["f9621f636fcf"]),
//         the97298Eda4674: json["97298eda4674"] == null ? null : PortoCamel.fromMap(json["97298eda4674"]),
//         ac18E3E2211F: json["ac18e3e2211f"] == null ? null : PortoCamel.fromMap(json["ac18e3e2211f"]),
//         e3B553F583Ef: json["e3b553f583ef"] == null ? null : PortoCamel.fromMap(json["e3b553f583ef"]),
//         the17Fe5154E3F8: json["17fe5154e3f8"] == null ? null : PortoCamel.fromMap(json["17fe5154e3f8"]),
//         d27570E27E24: json["d27570e27e24"] == null ? null : PortoCamel.fromMap(json["d27570e27e24"]),
//     );

//     Map<String, dynamic> toMap() => {
//         "a145e4fbbde1": a145E4Fbbde1 == null ? null : a145E4Fbbde1.toMap(),
//         "1a80fb74d4e7": the1A80Fb74D4E7 == null ? null : the1A80Fb74D4E7.toMap(),
//         "ec336dd3ca25": ec336Dd3Ca25 == null ? null : ec336Dd3Ca25.toMap(),
//         "4379aa1e7fd5": the4379Aa1E7Fd5 == null ? null : the4379Aa1E7Fd5.toMap(),
//         "2df185f86e8e": the2Df185F86E8E == null ? null : the2Df185F86E8E.toMap(),
//         "d2e2aa6c79b8": d2E2Aa6C79B8 == null ? null : d2E2Aa6C79B8.toMap(),
//         "1dc1d33c7eea": the1Dc1D33C7Eea == null ? null : the1Dc1D33C7Eea.toMap(),
//         "8eec77d52bfb": the8Eec77D52Bfb == null ? null : the8Eec77D52Bfb.toMap(),
//         "d843c36001fb": d843C36001Fb == null ? null : d843C36001Fb.toMap(),
//         "fbb3a2d4ede7": fbb3A2D4Ede7 == null ? null : fbb3A2D4Ede7.toMap(),
//         "93076a49874f": the93076A49874F == null ? null : the93076A49874F.toMap(),
//         "ec1c621f48b1": ec1C621F48B1 == null ? null : ec1C621F48B1.toMap(),
//         "ab61f4f6d20e": ab61F4F6D20E == null ? null : ab61F4F6D20E.toMap(),
//         "62a62e0319b5": the62A62E0319B5 == null ? null : the62A62E0319B5.toMap(),
//         "e05ea9b46627": e05Ea9B46627 == null ? null : e05Ea9B46627.toMap(),
//         "f9621f636fcf": f9621F636Fcf == null ? null : f9621F636Fcf.toMap(),
//         "97298eda4674": the97298Eda4674 == null ? null : the97298Eda4674.toMap(),
//         "ac18e3e2211f": ac18E3E2211F == null ? null : ac18E3E2211F.toMap(),
//         "e3b553f583ef": e3B553F583Ef == null ? null : e3B553F583Ef.toMap(),
//         "17fe5154e3f8": the17Fe5154E3F8 == null ? null : the17Fe5154E3F8.toMap(),
//         "d27570e27e24": d27570E27E24 == null ? null : d27570E27E24.toMap(),
//     };
// }

class PortoCamel {
    String id;
    String versionId;
    String creatorId;
    Id homeCollectionId;
    String title;
    DetectedLanguage detectedLanguage;
    String latestVersion;
    String latestPublishedVersion;
    bool hasUnpublishedEdits;
    int latestRev;
    int createdAt;
    int updatedAt;
    int acceptedAt;
    int firstPublishedAt;
    int latestPublishedAt;
    bool vote;
    String experimentalCss;
    String displayAuthor;
    Content content;
    PurpleVirtuals virtuals;
    bool coverless;
    String slug;
    String translationSourcePostId;
    String translationSourceCreatorId;
    bool isApprovedTranslation;
    String inResponseToPostId;
    int inResponseToRemovedAt;
    bool isTitleSynthesized;
    bool allowResponses;
    String importedUrl;
    int importedPublishedAt;
    int visibility;
    String uniqueSlug;
    PurplePreviewContent previewContent;
    int license;
    String inResponseToMediaResourceId;
    String canonicalUrl;
    Id approvedHomeCollectionId;
    String newsletterId;
    String webCanonicalUrl;
    String mediumUrl;
    String migrationId;
    bool notifyFollowers;
    bool notifyTwitter;
    bool notifyFacebook;
    int responseHiddenOnParentPostAt;
    bool isSeries;
    bool isSubscriptionLocked;
    int seriesLastAppendedAt;
    int audioVersionDurationSec;
    String sequenceId;
    bool isNsfw;
    bool isEligibleForRevenue;
    bool isBlockedFromHightower;
    int deletedAt;
    int lockedPostSource;
    int hightowerMinimumGuaranteeStartsAt;
    int hightowerMinimumGuaranteeEndsAt;
    int featureLockRequestAcceptedAt;
    int mongerRequestType;
    int layerCake;
    String socialTitle;
    String socialDek;
    String editorialPreviewTitle;
    String editorialPreviewDek;
    int curationEligibleAt;
    bool isProxyPost;
    String proxyPostFaviconUrl;
    String proxyPostProviderName;
    int proxyPostType;
    bool isSuspended;
    bool isLimitedState;
    PurpleType type;
    String primaryTopicId;

    PortoCamel({
        this.id,
        this.versionId,
        this.creatorId,
        this.homeCollectionId,
        this.title,
        this.detectedLanguage,
        this.latestVersion,
        this.latestPublishedVersion,
        this.hasUnpublishedEdits,
        this.latestRev,
        this.createdAt,
        this.updatedAt,
        this.acceptedAt,
        this.firstPublishedAt,
        this.latestPublishedAt,
        this.vote,
        this.experimentalCss,
        this.displayAuthor,
        this.content,
        this.virtuals,
        this.coverless,
        this.slug,
        this.translationSourcePostId,
        this.translationSourceCreatorId,
        this.isApprovedTranslation,
        this.inResponseToPostId,
        this.inResponseToRemovedAt,
        this.isTitleSynthesized,
        this.allowResponses,
        this.importedUrl,
        this.importedPublishedAt,
        this.visibility,
        this.uniqueSlug,
        this.previewContent,
        this.license,
        this.inResponseToMediaResourceId,
        this.canonicalUrl,
        this.approvedHomeCollectionId,
        this.newsletterId,
        this.webCanonicalUrl,
        this.mediumUrl,
        this.migrationId,
        this.notifyFollowers,
        this.notifyTwitter,
        this.notifyFacebook,
        this.responseHiddenOnParentPostAt,
        this.isSeries,
        this.isSubscriptionLocked,
        this.seriesLastAppendedAt,
        this.audioVersionDurationSec,
        this.sequenceId,
        this.isNsfw,
        this.isEligibleForRevenue,
        this.isBlockedFromHightower,
        this.deletedAt,
        this.lockedPostSource,
        this.hightowerMinimumGuaranteeStartsAt,
        this.hightowerMinimumGuaranteeEndsAt,
        this.featureLockRequestAcceptedAt,
        this.mongerRequestType,
        this.layerCake,
        this.socialTitle,
        this.socialDek,
        this.editorialPreviewTitle,
        this.editorialPreviewDek,
        this.curationEligibleAt,
        this.isProxyPost,
        this.proxyPostFaviconUrl,
        this.proxyPostProviderName,
        this.proxyPostType,
        this.isSuspended,
        this.isLimitedState,
        this.type,
        this.primaryTopicId,
    });

    factory PortoCamel.fromJson(String str) => PortoCamel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory PortoCamel.fromMap(Map<String, dynamic> json) => PortoCamel(
        id: json["id"] == null ? null : json["id"],
        versionId: json["versionId"] == null ? null : json["versionId"],
        creatorId: json["creatorId"] == null ? null : json["creatorId"],
        homeCollectionId: json["homeCollectionId"] == null ? null : idValues.map[json["homeCollectionId"]],
        title: json["title"] == null ? null : json["title"],
        detectedLanguage: json["detectedLanguage"] == null ? null : detectedLanguageValues.map[json["detectedLanguage"]],
        latestVersion: json["latestVersion"] == null ? null : json["latestVersion"],
        latestPublishedVersion: json["latestPublishedVersion"] == null ? null : json["latestPublishedVersion"],
        hasUnpublishedEdits: json["hasUnpublishedEdits"] == null ? null : json["hasUnpublishedEdits"],
        latestRev: json["latestRev"] == null ? null : json["latestRev"],
        createdAt: json["createdAt"] == null ? null : json["createdAt"],
        updatedAt: json["updatedAt"] == null ? null : json["updatedAt"],
        acceptedAt: json["acceptedAt"] == null ? null : json["acceptedAt"],
        firstPublishedAt: json["firstPublishedAt"] == null ? null : json["firstPublishedAt"],
        latestPublishedAt: json["latestPublishedAt"] == null ? null : json["latestPublishedAt"],
        vote: json["vote"] == null ? null : json["vote"],
        experimentalCss: json["experimentalCss"] == null ? null : json["experimentalCss"],
        displayAuthor: json["displayAuthor"] == null ? null : json["displayAuthor"],
        content: json["content"] == null ? null : Content.fromMap(json["content"]),
        virtuals: json["virtuals"] == null ? null : PurpleVirtuals.fromMap(json["virtuals"]),
        coverless: json["coverless"] == null ? null : json["coverless"],
        slug: json["slug"] == null ? null : json["slug"],
        translationSourcePostId: json["translationSourcePostId"] == null ? null : json["translationSourcePostId"],
        translationSourceCreatorId: json["translationSourceCreatorId"] == null ? null : json["translationSourceCreatorId"],
        isApprovedTranslation: json["isApprovedTranslation"] == null ? null : json["isApprovedTranslation"],
        inResponseToPostId: json["inResponseToPostId"] == null ? null : json["inResponseToPostId"],
        inResponseToRemovedAt: json["inResponseToRemovedAt"] == null ? null : json["inResponseToRemovedAt"],
        isTitleSynthesized: json["isTitleSynthesized"] == null ? null : json["isTitleSynthesized"],
        allowResponses: json["allowResponses"] == null ? null : json["allowResponses"],
        importedUrl: json["importedUrl"] == null ? null : json["importedUrl"],
        importedPublishedAt: json["importedPublishedAt"] == null ? null : json["importedPublishedAt"],
        visibility: json["visibility"] == null ? null : json["visibility"],
        uniqueSlug: json["uniqueSlug"] == null ? null : json["uniqueSlug"],
        previewContent: json["previewContent"] == null ? null : PurplePreviewContent.fromMap(json["previewContent"]),
        license: json["license"] == null ? null : json["license"],
        inResponseToMediaResourceId: json["inResponseToMediaResourceId"] == null ? null : json["inResponseToMediaResourceId"],
        canonicalUrl: json["canonicalUrl"] == null ? null : json["canonicalUrl"],
        approvedHomeCollectionId: json["approvedHomeCollectionId"] == null ? null : idValues.map[json["approvedHomeCollectionId"]],
        newsletterId: json["newsletterId"] == null ? null : json["newsletterId"],
        webCanonicalUrl: json["webCanonicalUrl"] == null ? null : json["webCanonicalUrl"],
        mediumUrl: json["mediumUrl"] == null ? null : json["mediumUrl"],
        migrationId: json["migrationId"] == null ? null : json["migrationId"],
        notifyFollowers: json["notifyFollowers"] == null ? null : json["notifyFollowers"],
        notifyTwitter: json["notifyTwitter"] == null ? null : json["notifyTwitter"],
        notifyFacebook: json["notifyFacebook"] == null ? null : json["notifyFacebook"],
        responseHiddenOnParentPostAt: json["responseHiddenOnParentPostAt"] == null ? null : json["responseHiddenOnParentPostAt"],
        isSeries: json["isSeries"] == null ? null : json["isSeries"],
        isSubscriptionLocked: json["isSubscriptionLocked"] == null ? null : json["isSubscriptionLocked"],
        seriesLastAppendedAt: json["seriesLastAppendedAt"] == null ? null : json["seriesLastAppendedAt"],
        audioVersionDurationSec: json["audioVersionDurationSec"] == null ? null : json["audioVersionDurationSec"],
        sequenceId: json["sequenceId"] == null ? null : json["sequenceId"],
        isNsfw: json["isNsfw"] == null ? null : json["isNsfw"],
        isEligibleForRevenue: json["isEligibleForRevenue"] == null ? null : json["isEligibleForRevenue"],
        isBlockedFromHightower: json["isBlockedFromHightower"] == null ? null : json["isBlockedFromHightower"],
        deletedAt: json["deletedAt"] == null ? null : json["deletedAt"],
        lockedPostSource: json["lockedPostSource"] == null ? null : json["lockedPostSource"],
        hightowerMinimumGuaranteeStartsAt: json["hightowerMinimumGuaranteeStartsAt"] == null ? null : json["hightowerMinimumGuaranteeStartsAt"],
        hightowerMinimumGuaranteeEndsAt: json["hightowerMinimumGuaranteeEndsAt"] == null ? null : json["hightowerMinimumGuaranteeEndsAt"],
        featureLockRequestAcceptedAt: json["featureLockRequestAcceptedAt"] == null ? null : json["featureLockRequestAcceptedAt"],
        mongerRequestType: json["mongerRequestType"] == null ? null : json["mongerRequestType"],
        layerCake: json["layerCake"] == null ? null : json["layerCake"],
        socialTitle: json["socialTitle"] == null ? null : json["socialTitle"],
        socialDek: json["socialDek"] == null ? null : json["socialDek"],
        editorialPreviewTitle: json["editorialPreviewTitle"] == null ? null : json["editorialPreviewTitle"],
        editorialPreviewDek: json["editorialPreviewDek"] == null ? null : json["editorialPreviewDek"],
        curationEligibleAt: json["curationEligibleAt"] == null ? null : json["curationEligibleAt"],
        isProxyPost: json["isProxyPost"] == null ? null : json["isProxyPost"],
        proxyPostFaviconUrl: json["proxyPostFaviconUrl"] == null ? null : json["proxyPostFaviconUrl"],
        proxyPostProviderName: json["proxyPostProviderName"] == null ? null : json["proxyPostProviderName"],
        proxyPostType: json["proxyPostType"] == null ? null : json["proxyPostType"],
        isSuspended: json["isSuspended"] == null ? null : json["isSuspended"],
        isLimitedState: json["isLimitedState"] == null ? null : json["isLimitedState"],
        type: json["type"] == null ? null : purpleTypeValues.map[json["type"]],
        primaryTopicId: json["primaryTopicId"] == null ? null : json["primaryTopicId"],
    );

    Map<String, dynamic> toMap() => {
        "id": id == null ? null : id,
        "versionId": versionId == null ? null : versionId,
        "creatorId": creatorId == null ? null : creatorId,
        "homeCollectionId": homeCollectionId == null ? null : idValues.reverse[homeCollectionId],
        "title": title == null ? null : title,
        "detectedLanguage": detectedLanguage == null ? null : detectedLanguageValues.reverse[detectedLanguage],
        "latestVersion": latestVersion == null ? null : latestVersion,
        "latestPublishedVersion": latestPublishedVersion == null ? null : latestPublishedVersion,
        "hasUnpublishedEdits": hasUnpublishedEdits == null ? null : hasUnpublishedEdits,
        "latestRev": latestRev == null ? null : latestRev,
        "createdAt": createdAt == null ? null : createdAt,
        "updatedAt": updatedAt == null ? null : updatedAt,
        "acceptedAt": acceptedAt == null ? null : acceptedAt,
        "firstPublishedAt": firstPublishedAt == null ? null : firstPublishedAt,
        "latestPublishedAt": latestPublishedAt == null ? null : latestPublishedAt,
        "vote": vote == null ? null : vote,
        "experimentalCss": experimentalCss == null ? null : experimentalCss,
        "displayAuthor": displayAuthor == null ? null : displayAuthor,
        "content": content == null ? null : content.toMap(),
        "virtuals": virtuals == null ? null : virtuals.toMap(),
        "coverless": coverless == null ? null : coverless,
        "slug": slug == null ? null : slug,
        "translationSourcePostId": translationSourcePostId == null ? null : translationSourcePostId,
        "translationSourceCreatorId": translationSourceCreatorId == null ? null : translationSourceCreatorId,
        "isApprovedTranslation": isApprovedTranslation == null ? null : isApprovedTranslation,
        "inResponseToPostId": inResponseToPostId == null ? null : inResponseToPostId,
        "inResponseToRemovedAt": inResponseToRemovedAt == null ? null : inResponseToRemovedAt,
        "isTitleSynthesized": isTitleSynthesized == null ? null : isTitleSynthesized,
        "allowResponses": allowResponses == null ? null : allowResponses,
        "importedUrl": importedUrl == null ? null : importedUrl,
        "importedPublishedAt": importedPublishedAt == null ? null : importedPublishedAt,
        "visibility": visibility == null ? null : visibility,
        "uniqueSlug": uniqueSlug == null ? null : uniqueSlug,
        "previewContent": previewContent == null ? null : previewContent.toMap(),
        "license": license == null ? null : license,
        "inResponseToMediaResourceId": inResponseToMediaResourceId == null ? null : inResponseToMediaResourceId,
        "canonicalUrl": canonicalUrl == null ? null : canonicalUrl,
        "approvedHomeCollectionId": approvedHomeCollectionId == null ? null : idValues.reverse[approvedHomeCollectionId],
        "newsletterId": newsletterId == null ? null : newsletterId,
        "webCanonicalUrl": webCanonicalUrl == null ? null : webCanonicalUrl,
        "mediumUrl": mediumUrl == null ? null : mediumUrl,
        "migrationId": migrationId == null ? null : migrationId,
        "notifyFollowers": notifyFollowers == null ? null : notifyFollowers,
        "notifyTwitter": notifyTwitter == null ? null : notifyTwitter,
        "notifyFacebook": notifyFacebook == null ? null : notifyFacebook,
        "responseHiddenOnParentPostAt": responseHiddenOnParentPostAt == null ? null : responseHiddenOnParentPostAt,
        "isSeries": isSeries == null ? null : isSeries,
        "isSubscriptionLocked": isSubscriptionLocked == null ? null : isSubscriptionLocked,
        "seriesLastAppendedAt": seriesLastAppendedAt == null ? null : seriesLastAppendedAt,
        "audioVersionDurationSec": audioVersionDurationSec == null ? null : audioVersionDurationSec,
        "sequenceId": sequenceId == null ? null : sequenceId,
        "isNsfw": isNsfw == null ? null : isNsfw,
        "isEligibleForRevenue": isEligibleForRevenue == null ? null : isEligibleForRevenue,
        "isBlockedFromHightower": isBlockedFromHightower == null ? null : isBlockedFromHightower,
        "deletedAt": deletedAt == null ? null : deletedAt,
        "lockedPostSource": lockedPostSource == null ? null : lockedPostSource,
        "hightowerMinimumGuaranteeStartsAt": hightowerMinimumGuaranteeStartsAt == null ? null : hightowerMinimumGuaranteeStartsAt,
        "hightowerMinimumGuaranteeEndsAt": hightowerMinimumGuaranteeEndsAt == null ? null : hightowerMinimumGuaranteeEndsAt,
        "featureLockRequestAcceptedAt": featureLockRequestAcceptedAt == null ? null : featureLockRequestAcceptedAt,
        "mongerRequestType": mongerRequestType == null ? null : mongerRequestType,
        "layerCake": layerCake == null ? null : layerCake,
        "socialTitle": socialTitle == null ? null : socialTitle,
        "socialDek": socialDek == null ? null : socialDek,
        "editorialPreviewTitle": editorialPreviewTitle == null ? null : editorialPreviewTitle,
        "editorialPreviewDek": editorialPreviewDek == null ? null : editorialPreviewDek,
        "curationEligibleAt": curationEligibleAt == null ? null : curationEligibleAt,
        "isProxyPost": isProxyPost == null ? null : isProxyPost,
        "proxyPostFaviconUrl": proxyPostFaviconUrl == null ? null : proxyPostFaviconUrl,
        "proxyPostProviderName": proxyPostProviderName == null ? null : proxyPostProviderName,
        "proxyPostType": proxyPostType == null ? null : proxyPostType,
        "isSuspended": isSuspended == null ? null : isSuspended,
        "isLimitedState": isLimitedState == null ? null : isLimitedState,
        "type": type == null ? null : purpleTypeValues.reverse[type],
        "primaryTopicId": primaryTopicId == null ? null : primaryTopicId,
    };
}

class Content {
    String subtitle;
    PostDisplay postDisplay;

    Content({
        this.subtitle,
        this.postDisplay,
    });

    factory Content.fromJson(String str) => Content.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Content.fromMap(Map<String, dynamic> json) => Content(
        subtitle: json["subtitle"] == null ? null : json["subtitle"],
        postDisplay: json["postDisplay"] == null ? null : PostDisplay.fromMap(json["postDisplay"]),
    );

    Map<String, dynamic> toMap() => {
        "subtitle": subtitle == null ? null : subtitle,
        "postDisplay": postDisplay == null ? null : postDisplay.toMap(),
    };
}

class PostDisplay {
    bool coverless;

    PostDisplay({
        this.coverless,
    });

    factory PostDisplay.fromJson(String str) => PostDisplay.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory PostDisplay.fromMap(Map<String, dynamic> json) => PostDisplay(
        coverless: json["coverless"] == null ? null : json["coverless"],
    );

    Map<String, dynamic> toMap() => {
        "coverless": coverless == null ? null : coverless,
    };
}

enum DetectedLanguage { EN }

final detectedLanguageValues = EnumValues({
    "en": DetectedLanguage.EN
});

class PurplePreviewContent {
    PurpleBodyModel bodyModel;
    bool isFullContent;
    String subtitle;

    PurplePreviewContent({
        this.bodyModel,
        this.isFullContent,
        this.subtitle,
    });

    factory PurplePreviewContent.fromJson(String str) => PurplePreviewContent.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory PurplePreviewContent.fromMap(Map<String, dynamic> json) => PurplePreviewContent(
        bodyModel: json["bodyModel"] == null ? null : PurpleBodyModel.fromMap(json["bodyModel"]),
        isFullContent: json["isFullContent"] == null ? null : json["isFullContent"],
        subtitle: json["subtitle"] == null ? null : json["subtitle"],
    );

    Map<String, dynamic> toMap() => {
        "bodyModel": bodyModel == null ? null : bodyModel.toMap(),
        "isFullContent": isFullContent == null ? null : isFullContent,
        "subtitle": subtitle == null ? null : subtitle,
    };
}

class PurpleBodyModel {
    List<PurpleParagraph> paragraphs;
    List<BodyModelSection> sections;

    PurpleBodyModel({
        this.paragraphs,
        this.sections,
    });

    factory PurpleBodyModel.fromJson(String str) => PurpleBodyModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory PurpleBodyModel.fromMap(Map<String, dynamic> json) => PurpleBodyModel(
        paragraphs: json["paragraphs"] == null ? null : List<PurpleParagraph>.from(json["paragraphs"].map((x) => PurpleParagraph.fromMap(x))),
        sections: json["sections"] == null ? null : List<BodyModelSection>.from(json["sections"].map((x) => BodyModelSection.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "paragraphs": paragraphs == null ? null : List<dynamic>.from(paragraphs.map((x) => x.toMap())),
        "sections": sections == null ? null : List<dynamic>.from(sections.map((x) => x.toMap())),
    };
}

class PurpleParagraph {
    String name;
    int type;
    String text;
    int layout;
    LogoImage metadata;
    List<Markup> markups;
    int alignment;

    PurpleParagraph({
        this.name,
        this.type,
        this.text,
        this.layout,
        this.metadata,
        this.markups,
        this.alignment,
    });

    factory PurpleParagraph.fromJson(String str) => PurpleParagraph.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory PurpleParagraph.fromMap(Map<String, dynamic> json) => PurpleParagraph(
        name: json["name"] == null ? null : json["name"],
        type: json["type"] == null ? null : json["type"],
        text: json["text"] == null ? null : json["text"],
        layout: json["layout"] == null ? null : json["layout"],
        metadata: json["metadata"] == null ? null : LogoImage.fromMap(json["metadata"]),
        markups: json["markups"] == null ? null : List<Markup>.from(json["markups"].map((x) => Markup.fromMap(x))),
        alignment: json["alignment"] == null ? null : json["alignment"],
    );

    Map<String, dynamic> toMap() => {
        "name": name == null ? null : name,
        "type": type == null ? null : type,
        "text": text == null ? null : text,
        "layout": layout == null ? null : layout,
        "metadata": metadata == null ? null : metadata.toMap(),
        "markups": markups == null ? null : List<dynamic>.from(markups.map((x) => x.toMap())),
        "alignment": alignment == null ? null : alignment,
    };
}

class Markup {
    int type;
    int start;
    int end;
    String href;
    String title;
    String rel;
    int anchorType;

    Markup({
        this.type,
        this.start,
        this.end,
        this.href,
        this.title,
        this.rel,
        this.anchorType,
    });

    factory Markup.fromJson(String str) => Markup.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Markup.fromMap(Map<String, dynamic> json) => Markup(
        type: json["type"] == null ? null : json["type"],
        start: json["start"] == null ? null : json["start"],
        end: json["end"] == null ? null : json["end"],
        href: json["href"] == null ? null : json["href"],
        title: json["title"] == null ? null : json["title"],
        rel: json["rel"] == null ? null : json["rel"],
        anchorType: json["anchorType"] == null ? null : json["anchorType"],
    );

    Map<String, dynamic> toMap() => {
        "type": type == null ? null : type,
        "start": start == null ? null : start,
        "end": end == null ? null : end,
        "href": href == null ? null : href,
        "title": title == null ? null : title,
        "rel": rel == null ? null : rel,
        "anchorType": anchorType == null ? null : anchorType,
    };
}

class BodyModelSection {
    int startIndex;

    BodyModelSection({
        this.startIndex,
    });

    factory BodyModelSection.fromJson(String str) => BodyModelSection.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory BodyModelSection.fromMap(Map<String, dynamic> json) => BodyModelSection(
        startIndex: json["startIndex"] == null ? null : json["startIndex"],
    );

    Map<String, dynamic> toMap() => {
        "startIndex": startIndex == null ? null : startIndex,
    };
}

enum PurpleType { POST }

final purpleTypeValues = EnumValues({
    "Post": PurpleType.POST
});

class PurpleVirtuals {
    StatusForCollection statusForCollection;
    bool allowNotes;
    AmpLogo previewImage;
    int wordCount;
    int imageCount;
    double readingTime;
    String subtitle;
    int publishedInCount;
    List<dynamic> usersBySocialRecommends;
    bool noIndex;
    int recommends;
    bool isBookmarked;
    List<Tag> tags;
    int socialRecommendsCount;
    int responsesCreatedCount;
    Links links;
    bool isLockedPreviewOnly;
    String metaDescription;
    int totalClapCount;
    int sectionCount;
    int readingList;
    List<Topic> topics;

    PurpleVirtuals({
        this.statusForCollection,
        this.allowNotes,
        this.previewImage,
        this.wordCount,
        this.imageCount,
        this.readingTime,
        this.subtitle,
        this.publishedInCount,
        this.usersBySocialRecommends,
        this.noIndex,
        this.recommends,
        this.isBookmarked,
        this.tags,
        this.socialRecommendsCount,
        this.responsesCreatedCount,
        this.links,
        this.isLockedPreviewOnly,
        this.metaDescription,
        this.totalClapCount,
        this.sectionCount,
        this.readingList,
        this.topics,
    });

    factory PurpleVirtuals.fromJson(String str) => PurpleVirtuals.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory PurpleVirtuals.fromMap(Map<String, dynamic> json) => PurpleVirtuals(
        statusForCollection: json["statusForCollection"] == null ? null : statusForCollectionValues.map[json["statusForCollection"]],
        allowNotes: json["allowNotes"] == null ? null : json["allowNotes"],
        previewImage: json["previewImage"] == null ? null : AmpLogo.fromMap(json["previewImage"]),
        wordCount: json["wordCount"] == null ? null : json["wordCount"],
        imageCount: json["imageCount"] == null ? null : json["imageCount"],
        readingTime: json["readingTime"] == null ? null : json["readingTime"].toDouble(),
        subtitle: json["subtitle"] == null ? null : json["subtitle"],
        publishedInCount: json["publishedInCount"] == null ? null : json["publishedInCount"],
        usersBySocialRecommends: json["usersBySocialRecommends"] == null ? null : List<dynamic>.from(json["usersBySocialRecommends"].map((x) => x)),
        noIndex: json["noIndex"] == null ? null : json["noIndex"],
        recommends: json["recommends"] == null ? null : json["recommends"],
        isBookmarked: json["isBookmarked"] == null ? null : json["isBookmarked"],
        tags: json["tags"] == null ? null : List<Tag>.from(json["tags"].map((x) => Tag.fromMap(x))),
        socialRecommendsCount: json["socialRecommendsCount"] == null ? null : json["socialRecommendsCount"],
        responsesCreatedCount: json["responsesCreatedCount"] == null ? null : json["responsesCreatedCount"],
        links: json["links"] == null ? null : Links.fromMap(json["links"]),
        isLockedPreviewOnly: json["isLockedPreviewOnly"] == null ? null : json["isLockedPreviewOnly"],
        metaDescription: json["metaDescription"] == null ? null : json["metaDescription"],
        totalClapCount: json["totalClapCount"] == null ? null : json["totalClapCount"],
        sectionCount: json["sectionCount"] == null ? null : json["sectionCount"],
        readingList: json["readingList"] == null ? null : json["readingList"],
        topics: json["topics"] == null ? null : List<Topic>.from(json["topics"].map((x) => Topic.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "statusForCollection": statusForCollection == null ? null : statusForCollectionValues.reverse[statusForCollection],
        "allowNotes": allowNotes == null ? null : allowNotes,
        "previewImage": previewImage == null ? null : previewImage.toMap(),
        "wordCount": wordCount == null ? null : wordCount,
        "imageCount": imageCount == null ? null : imageCount,
        "readingTime": readingTime == null ? null : readingTime,
        "subtitle": subtitle == null ? null : subtitle,
        "publishedInCount": publishedInCount == null ? null : publishedInCount,
        "usersBySocialRecommends": usersBySocialRecommends == null ? null : List<dynamic>.from(usersBySocialRecommends.map((x) => x)),
        "noIndex": noIndex == null ? null : noIndex,
        "recommends": recommends == null ? null : recommends,
        "isBookmarked": isBookmarked == null ? null : isBookmarked,
        "tags": tags == null ? null : List<dynamic>.from(tags.map((x) => x.toMap())),
        "socialRecommendsCount": socialRecommendsCount == null ? null : socialRecommendsCount,
        "responsesCreatedCount": responsesCreatedCount == null ? null : responsesCreatedCount,
        "links": links == null ? null : links.toMap(),
        "isLockedPreviewOnly": isLockedPreviewOnly == null ? null : isLockedPreviewOnly,
        "metaDescription": metaDescription == null ? null : metaDescription,
        "totalClapCount": totalClapCount == null ? null : totalClapCount,
        "sectionCount": sectionCount == null ? null : sectionCount,
        "readingList": readingList == null ? null : readingList,
        "topics": topics == null ? null : List<dynamic>.from(topics.map((x) => x.toMap())),
    };
}

class Links {
    List<Entry> entries;
    String version;
    int generatedAt;

    Links({
        this.entries,
        this.version,
        this.generatedAt,
    });

    factory Links.fromJson(String str) => Links.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Links.fromMap(Map<String, dynamic> json) => Links(
        entries: json["entries"] == null ? null : List<Entry>.from(json["entries"].map((x) => Entry.fromMap(x))),
        version: json["version"] == null ? null : json["version"],
        generatedAt: json["generatedAt"] == null ? null : json["generatedAt"],
    );

    Map<String, dynamic> toMap() => {
        "entries": entries == null ? null : List<dynamic>.from(entries.map((x) => x.toMap())),
        "version": version == null ? null : version,
        "generatedAt": generatedAt == null ? null : generatedAt,
    };
}

class Entry {
    String url;
    List<Alt> alts;
    int httpStatus;

    Entry({
        this.url,
        this.alts,
        this.httpStatus,
    });

    factory Entry.fromJson(String str) => Entry.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Entry.fromMap(Map<String, dynamic> json) => Entry(
        url: json["url"] == null ? null : json["url"],
        alts: json["alts"] == null ? null : List<Alt>.from(json["alts"].map((x) => Alt.fromMap(x))),
        httpStatus: json["httpStatus"] == null ? null : json["httpStatus"],
    );

    Map<String, dynamic> toMap() => {
        "url": url == null ? null : url,
        "alts": alts == null ? null : List<dynamic>.from(alts.map((x) => x.toMap())),
        "httpStatus": httpStatus == null ? null : httpStatus,
    };
}

class Alt {
    int type;
    String url;

    Alt({
        this.type,
        this.url,
    });

    factory Alt.fromJson(String str) => Alt.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Alt.fromMap(Map<String, dynamic> json) => Alt(
        type: json["type"] == null ? null : json["type"],
        url: json["url"] == null ? null : json["url"],
    );

    Map<String, dynamic> toMap() => {
        "type": type == null ? null : type,
        "url": url == null ? null : url,
    };
}

enum StatusForCollection { APPROVED }

final statusForCollectionValues = EnumValues({
    "APPROVED": StatusForCollection.APPROVED
});

class Tag {
    String slug;
    String name;
    int postCount;
    TagMetadata metadata;
    TagType type;

    Tag({
        this.slug,
        this.name,
        this.postCount,
        this.metadata,
        this.type,
    });

    factory Tag.fromJson(String str) => Tag.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Tag.fromMap(Map<String, dynamic> json) => Tag(
        slug: json["slug"] == null ? null : json["slug"],
        name: json["name"] == null ? null : json["name"],
        postCount: json["postCount"] == null ? null : json["postCount"],
        metadata: json["metadata"] == null ? null : TagMetadata.fromMap(json["metadata"]),
        type: json["type"] == null ? null : tagTypeValues.map[json["type"]],
    );

    Map<String, dynamic> toMap() => {
        "slug": slug == null ? null : slug,
        "name": name == null ? null : name,
        "postCount": postCount == null ? null : postCount,
        "metadata": metadata == null ? null : metadata.toMap(),
        "type": type == null ? null : tagTypeValues.reverse[type],
    };
}

class TagMetadata {
    int postCount;
    LogoImage coverImage;

    TagMetadata({
        this.postCount,
        this.coverImage,
    });

    factory TagMetadata.fromJson(String str) => TagMetadata.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory TagMetadata.fromMap(Map<String, dynamic> json) => TagMetadata(
        postCount: json["postCount"] == null ? null : json["postCount"],
        coverImage: json["coverImage"] == null ? null : LogoImage.fromMap(json["coverImage"]),
    );

    Map<String, dynamic> toMap() => {
        "postCount": postCount == null ? null : postCount,
        "coverImage": coverImage == null ? null : coverImage.toMap(),
    };
}

enum TagType { TAG }

final tagTypeValues = EnumValues({
    "Tag": TagType.TAG
});

class Topic {
    String topicId;
    String slug;
    int createdAt;
    int deletedAt;
    LogoImage image;
    String name;
    String description;
    List<dynamic> relatedTopics;
    int visibility;
    List<dynamic> relatedTags;
    List<dynamic> relatedTopicIds;
    String type;

    Topic({
        this.topicId,
        this.slug,
        this.createdAt,
        this.deletedAt,
        this.image,
        this.name,
        this.description,
        this.relatedTopics,
        this.visibility,
        this.relatedTags,
        this.relatedTopicIds,
        this.type,
    });

    factory Topic.fromJson(String str) => Topic.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Topic.fromMap(Map<String, dynamic> json) => Topic(
        topicId: json["topicId"] == null ? null : json["topicId"],
        slug: json["slug"] == null ? null : json["slug"],
        createdAt: json["createdAt"] == null ? null : json["createdAt"],
        deletedAt: json["deletedAt"] == null ? null : json["deletedAt"],
        image: json["image"] == null ? null : LogoImage.fromMap(json["image"]),
        name: json["name"] == null ? null : json["name"],
        description: json["description"] == null ? null : json["description"],
        relatedTopics: json["relatedTopics"] == null ? null : List<dynamic>.from(json["relatedTopics"].map((x) => x)),
        visibility: json["visibility"] == null ? null : json["visibility"],
        relatedTags: json["relatedTags"] == null ? null : List<dynamic>.from(json["relatedTags"].map((x) => x)),
        relatedTopicIds: json["relatedTopicIds"] == null ? null : List<dynamic>.from(json["relatedTopicIds"].map((x) => x)),
        type: json["type"] == null ? null : json["type"],
    );

    Map<String, dynamic> toMap() => {
        "topicId": topicId == null ? null : topicId,
        "slug": slug == null ? null : slug,
        "createdAt": createdAt == null ? null : createdAt,
        "deletedAt": deletedAt == null ? null : deletedAt,
        "image": image == null ? null : image.toMap(),
        "name": name == null ? null : name,
        "description": description == null ? null : description,
        "relatedTopics": relatedTopics == null ? null : List<dynamic>.from(relatedTopics.map((x) => x)),
        "visibility": visibility == null ? null : visibility,
        "relatedTags": relatedTags == null ? null : List<dynamic>.from(relatedTags.map((x) => x)),
        "relatedTopicIds": relatedTopicIds == null ? null : List<dynamic>.from(relatedTopicIds.map((x) => x)),
        "type": type == null ? null : type,
    };
}

class Ec1C621F48B1 {
    String id;
    String versionId;
    String creatorId;
    Id homeCollectionId;
    String title;
    DetectedLanguage detectedLanguage;
    String latestVersion;
    String latestPublishedVersion;
    bool hasUnpublishedEdits;
    int latestRev;
    int createdAt;
    int updatedAt;
    int acceptedAt;
    int firstPublishedAt;
    int latestPublishedAt;
    bool vote;
    String experimentalCss;
    String displayAuthor;
    Content content;
    PurpleVirtuals virtuals;
    bool coverless;
    String slug;
    String translationSourcePostId;
    String translationSourceCreatorId;
    bool isApprovedTranslation;
    String inResponseToPostId;
    int inResponseToRemovedAt;
    bool isTitleSynthesized;
    bool allowResponses;
    String importedUrl;
    int importedPublishedAt;
    int visibility;
    String uniqueSlug;
    Ec1C621F48B1PreviewContent previewContent;
    int license;
    String inResponseToMediaResourceId;
    String canonicalUrl;
    Id approvedHomeCollectionId;
    String newsletterId;
    String webCanonicalUrl;
    String mediumUrl;
    String migrationId;
    bool notifyFollowers;
    bool notifyTwitter;
    bool notifyFacebook;
    int responseHiddenOnParentPostAt;
    bool isSeries;
    bool isSubscriptionLocked;
    int seriesLastAppendedAt;
    int audioVersionDurationSec;
    String sequenceId;
    bool isNsfw;
    bool isEligibleForRevenue;
    bool isBlockedFromHightower;
    int deletedAt;
    int lockedPostSource;
    int hightowerMinimumGuaranteeStartsAt;
    int hightowerMinimumGuaranteeEndsAt;
    int featureLockRequestAcceptedAt;
    int mongerRequestType;
    int layerCake;
    String socialTitle;
    String socialDek;
    String editorialPreviewTitle;
    String editorialPreviewDek;
    int curationEligibleAt;
    bool isProxyPost;
    String proxyPostFaviconUrl;
    String proxyPostProviderName;
    int proxyPostType;
    bool isSuspended;
    bool isLimitedState;
    PurpleType type;

    Ec1C621F48B1({
        this.id,
        this.versionId,
        this.creatorId,
        this.homeCollectionId,
        this.title,
        this.detectedLanguage,
        this.latestVersion,
        this.latestPublishedVersion,
        this.hasUnpublishedEdits,
        this.latestRev,
        this.createdAt,
        this.updatedAt,
        this.acceptedAt,
        this.firstPublishedAt,
        this.latestPublishedAt,
        this.vote,
        this.experimentalCss,
        this.displayAuthor,
        this.content,
        this.virtuals,
        this.coverless,
        this.slug,
        this.translationSourcePostId,
        this.translationSourceCreatorId,
        this.isApprovedTranslation,
        this.inResponseToPostId,
        this.inResponseToRemovedAt,
        this.isTitleSynthesized,
        this.allowResponses,
        this.importedUrl,
        this.importedPublishedAt,
        this.visibility,
        this.uniqueSlug,
        this.previewContent,
        this.license,
        this.inResponseToMediaResourceId,
        this.canonicalUrl,
        this.approvedHomeCollectionId,
        this.newsletterId,
        this.webCanonicalUrl,
        this.mediumUrl,
        this.migrationId,
        this.notifyFollowers,
        this.notifyTwitter,
        this.notifyFacebook,
        this.responseHiddenOnParentPostAt,
        this.isSeries,
        this.isSubscriptionLocked,
        this.seriesLastAppendedAt,
        this.audioVersionDurationSec,
        this.sequenceId,
        this.isNsfw,
        this.isEligibleForRevenue,
        this.isBlockedFromHightower,
        this.deletedAt,
        this.lockedPostSource,
        this.hightowerMinimumGuaranteeStartsAt,
        this.hightowerMinimumGuaranteeEndsAt,
        this.featureLockRequestAcceptedAt,
        this.mongerRequestType,
        this.layerCake,
        this.socialTitle,
        this.socialDek,
        this.editorialPreviewTitle,
        this.editorialPreviewDek,
        this.curationEligibleAt,
        this.isProxyPost,
        this.proxyPostFaviconUrl,
        this.proxyPostProviderName,
        this.proxyPostType,
        this.isSuspended,
        this.isLimitedState,
        this.type,
    });

    factory Ec1C621F48B1.fromJson(String str) => Ec1C621F48B1.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Ec1C621F48B1.fromMap(Map<String, dynamic> json) => Ec1C621F48B1(
        id: json["id"] == null ? null : json["id"],
        versionId: json["versionId"] == null ? null : json["versionId"],
        creatorId: json["creatorId"] == null ? null : json["creatorId"],
        homeCollectionId: json["homeCollectionId"] == null ? null : idValues.map[json["homeCollectionId"]],
        title: json["title"] == null ? null : json["title"],
        detectedLanguage: json["detectedLanguage"] == null ? null : detectedLanguageValues.map[json["detectedLanguage"]],
        latestVersion: json["latestVersion"] == null ? null : json["latestVersion"],
        latestPublishedVersion: json["latestPublishedVersion"] == null ? null : json["latestPublishedVersion"],
        hasUnpublishedEdits: json["hasUnpublishedEdits"] == null ? null : json["hasUnpublishedEdits"],
        latestRev: json["latestRev"] == null ? null : json["latestRev"],
        createdAt: json["createdAt"] == null ? null : json["createdAt"],
        updatedAt: json["updatedAt"] == null ? null : json["updatedAt"],
        acceptedAt: json["acceptedAt"] == null ? null : json["acceptedAt"],
        firstPublishedAt: json["firstPublishedAt"] == null ? null : json["firstPublishedAt"],
        latestPublishedAt: json["latestPublishedAt"] == null ? null : json["latestPublishedAt"],
        vote: json["vote"] == null ? null : json["vote"],
        experimentalCss: json["experimentalCss"] == null ? null : json["experimentalCss"],
        displayAuthor: json["displayAuthor"] == null ? null : json["displayAuthor"],
        content: json["content"] == null ? null : Content.fromMap(json["content"]),
        virtuals: json["virtuals"] == null ? null : PurpleVirtuals.fromMap(json["virtuals"]),
        coverless: json["coverless"] == null ? null : json["coverless"],
        slug: json["slug"] == null ? null : json["slug"],
        translationSourcePostId: json["translationSourcePostId"] == null ? null : json["translationSourcePostId"],
        translationSourceCreatorId: json["translationSourceCreatorId"] == null ? null : json["translationSourceCreatorId"],
        isApprovedTranslation: json["isApprovedTranslation"] == null ? null : json["isApprovedTranslation"],
        inResponseToPostId: json["inResponseToPostId"] == null ? null : json["inResponseToPostId"],
        inResponseToRemovedAt: json["inResponseToRemovedAt"] == null ? null : json["inResponseToRemovedAt"],
        isTitleSynthesized: json["isTitleSynthesized"] == null ? null : json["isTitleSynthesized"],
        allowResponses: json["allowResponses"] == null ? null : json["allowResponses"],
        importedUrl: json["importedUrl"] == null ? null : json["importedUrl"],
        importedPublishedAt: json["importedPublishedAt"] == null ? null : json["importedPublishedAt"],
        visibility: json["visibility"] == null ? null : json["visibility"],
        uniqueSlug: json["uniqueSlug"] == null ? null : json["uniqueSlug"],
        previewContent: json["previewContent"] == null ? null : Ec1C621F48B1PreviewContent.fromMap(json["previewContent"]),
        license: json["license"] == null ? null : json["license"],
        inResponseToMediaResourceId: json["inResponseToMediaResourceId"] == null ? null : json["inResponseToMediaResourceId"],
        canonicalUrl: json["canonicalUrl"] == null ? null : json["canonicalUrl"],
        approvedHomeCollectionId: json["approvedHomeCollectionId"] == null ? null : idValues.map[json["approvedHomeCollectionId"]],
        newsletterId: json["newsletterId"] == null ? null : json["newsletterId"],
        webCanonicalUrl: json["webCanonicalUrl"] == null ? null : json["webCanonicalUrl"],
        mediumUrl: json["mediumUrl"] == null ? null : json["mediumUrl"],
        migrationId: json["migrationId"] == null ? null : json["migrationId"],
        notifyFollowers: json["notifyFollowers"] == null ? null : json["notifyFollowers"],
        notifyTwitter: json["notifyTwitter"] == null ? null : json["notifyTwitter"],
        notifyFacebook: json["notifyFacebook"] == null ? null : json["notifyFacebook"],
        responseHiddenOnParentPostAt: json["responseHiddenOnParentPostAt"] == null ? null : json["responseHiddenOnParentPostAt"],
        isSeries: json["isSeries"] == null ? null : json["isSeries"],
        isSubscriptionLocked: json["isSubscriptionLocked"] == null ? null : json["isSubscriptionLocked"],
        seriesLastAppendedAt: json["seriesLastAppendedAt"] == null ? null : json["seriesLastAppendedAt"],
        audioVersionDurationSec: json["audioVersionDurationSec"] == null ? null : json["audioVersionDurationSec"],
        sequenceId: json["sequenceId"] == null ? null : json["sequenceId"],
        isNsfw: json["isNsfw"] == null ? null : json["isNsfw"],
        isEligibleForRevenue: json["isEligibleForRevenue"] == null ? null : json["isEligibleForRevenue"],
        isBlockedFromHightower: json["isBlockedFromHightower"] == null ? null : json["isBlockedFromHightower"],
        deletedAt: json["deletedAt"] == null ? null : json["deletedAt"],
        lockedPostSource: json["lockedPostSource"] == null ? null : json["lockedPostSource"],
        hightowerMinimumGuaranteeStartsAt: json["hightowerMinimumGuaranteeStartsAt"] == null ? null : json["hightowerMinimumGuaranteeStartsAt"],
        hightowerMinimumGuaranteeEndsAt: json["hightowerMinimumGuaranteeEndsAt"] == null ? null : json["hightowerMinimumGuaranteeEndsAt"],
        featureLockRequestAcceptedAt: json["featureLockRequestAcceptedAt"] == null ? null : json["featureLockRequestAcceptedAt"],
        mongerRequestType: json["mongerRequestType"] == null ? null : json["mongerRequestType"],
        layerCake: json["layerCake"] == null ? null : json["layerCake"],
        socialTitle: json["socialTitle"] == null ? null : json["socialTitle"],
        socialDek: json["socialDek"] == null ? null : json["socialDek"],
        editorialPreviewTitle: json["editorialPreviewTitle"] == null ? null : json["editorialPreviewTitle"],
        editorialPreviewDek: json["editorialPreviewDek"] == null ? null : json["editorialPreviewDek"],
        curationEligibleAt: json["curationEligibleAt"] == null ? null : json["curationEligibleAt"],
        isProxyPost: json["isProxyPost"] == null ? null : json["isProxyPost"],
        proxyPostFaviconUrl: json["proxyPostFaviconUrl"] == null ? null : json["proxyPostFaviconUrl"],
        proxyPostProviderName: json["proxyPostProviderName"] == null ? null : json["proxyPostProviderName"],
        proxyPostType: json["proxyPostType"] == null ? null : json["proxyPostType"],
        isSuspended: json["isSuspended"] == null ? null : json["isSuspended"],
        isLimitedState: json["isLimitedState"] == null ? null : json["isLimitedState"],
        type: json["type"] == null ? null : purpleTypeValues.map[json["type"]],
    );

    Map<String, dynamic> toMap() => {
        "id": id == null ? null : id,
        "versionId": versionId == null ? null : versionId,
        "creatorId": creatorId == null ? null : creatorId,
        "homeCollectionId": homeCollectionId == null ? null : idValues.reverse[homeCollectionId],
        "title": title == null ? null : title,
        "detectedLanguage": detectedLanguage == null ? null : detectedLanguageValues.reverse[detectedLanguage],
        "latestVersion": latestVersion == null ? null : latestVersion,
        "latestPublishedVersion": latestPublishedVersion == null ? null : latestPublishedVersion,
        "hasUnpublishedEdits": hasUnpublishedEdits == null ? null : hasUnpublishedEdits,
        "latestRev": latestRev == null ? null : latestRev,
        "createdAt": createdAt == null ? null : createdAt,
        "updatedAt": updatedAt == null ? null : updatedAt,
        "acceptedAt": acceptedAt == null ? null : acceptedAt,
        "firstPublishedAt": firstPublishedAt == null ? null : firstPublishedAt,
        "latestPublishedAt": latestPublishedAt == null ? null : latestPublishedAt,
        "vote": vote == null ? null : vote,
        "experimentalCss": experimentalCss == null ? null : experimentalCss,
        "displayAuthor": displayAuthor == null ? null : displayAuthor,
        "content": content == null ? null : content.toMap(),
        "virtuals": virtuals == null ? null : virtuals.toMap(),
        "coverless": coverless == null ? null : coverless,
        "slug": slug == null ? null : slug,
        "translationSourcePostId": translationSourcePostId == null ? null : translationSourcePostId,
        "translationSourceCreatorId": translationSourceCreatorId == null ? null : translationSourceCreatorId,
        "isApprovedTranslation": isApprovedTranslation == null ? null : isApprovedTranslation,
        "inResponseToPostId": inResponseToPostId == null ? null : inResponseToPostId,
        "inResponseToRemovedAt": inResponseToRemovedAt == null ? null : inResponseToRemovedAt,
        "isTitleSynthesized": isTitleSynthesized == null ? null : isTitleSynthesized,
        "allowResponses": allowResponses == null ? null : allowResponses,
        "importedUrl": importedUrl == null ? null : importedUrl,
        "importedPublishedAt": importedPublishedAt == null ? null : importedPublishedAt,
        "visibility": visibility == null ? null : visibility,
        "uniqueSlug": uniqueSlug == null ? null : uniqueSlug,
        "previewContent": previewContent == null ? null : previewContent.toMap(),
        "license": license == null ? null : license,
        "inResponseToMediaResourceId": inResponseToMediaResourceId == null ? null : inResponseToMediaResourceId,
        "canonicalUrl": canonicalUrl == null ? null : canonicalUrl,
        "approvedHomeCollectionId": approvedHomeCollectionId == null ? null : idValues.reverse[approvedHomeCollectionId],
        "newsletterId": newsletterId == null ? null : newsletterId,
        "webCanonicalUrl": webCanonicalUrl == null ? null : webCanonicalUrl,
        "mediumUrl": mediumUrl == null ? null : mediumUrl,
        "migrationId": migrationId == null ? null : migrationId,
        "notifyFollowers": notifyFollowers == null ? null : notifyFollowers,
        "notifyTwitter": notifyTwitter == null ? null : notifyTwitter,
        "notifyFacebook": notifyFacebook == null ? null : notifyFacebook,
        "responseHiddenOnParentPostAt": responseHiddenOnParentPostAt == null ? null : responseHiddenOnParentPostAt,
        "isSeries": isSeries == null ? null : isSeries,
        "isSubscriptionLocked": isSubscriptionLocked == null ? null : isSubscriptionLocked,
        "seriesLastAppendedAt": seriesLastAppendedAt == null ? null : seriesLastAppendedAt,
        "audioVersionDurationSec": audioVersionDurationSec == null ? null : audioVersionDurationSec,
        "sequenceId": sequenceId == null ? null : sequenceId,
        "isNsfw": isNsfw == null ? null : isNsfw,
        "isEligibleForRevenue": isEligibleForRevenue == null ? null : isEligibleForRevenue,
        "isBlockedFromHightower": isBlockedFromHightower == null ? null : isBlockedFromHightower,
        "deletedAt": deletedAt == null ? null : deletedAt,
        "lockedPostSource": lockedPostSource == null ? null : lockedPostSource,
        "hightowerMinimumGuaranteeStartsAt": hightowerMinimumGuaranteeStartsAt == null ? null : hightowerMinimumGuaranteeStartsAt,
        "hightowerMinimumGuaranteeEndsAt": hightowerMinimumGuaranteeEndsAt == null ? null : hightowerMinimumGuaranteeEndsAt,
        "featureLockRequestAcceptedAt": featureLockRequestAcceptedAt == null ? null : featureLockRequestAcceptedAt,
        "mongerRequestType": mongerRequestType == null ? null : mongerRequestType,
        "layerCake": layerCake == null ? null : layerCake,
        "socialTitle": socialTitle == null ? null : socialTitle,
        "socialDek": socialDek == null ? null : socialDek,
        "editorialPreviewTitle": editorialPreviewTitle == null ? null : editorialPreviewTitle,
        "editorialPreviewDek": editorialPreviewDek == null ? null : editorialPreviewDek,
        "curationEligibleAt": curationEligibleAt == null ? null : curationEligibleAt,
        "isProxyPost": isProxyPost == null ? null : isProxyPost,
        "proxyPostFaviconUrl": proxyPostFaviconUrl == null ? null : proxyPostFaviconUrl,
        "proxyPostProviderName": proxyPostProviderName == null ? null : proxyPostProviderName,
        "proxyPostType": proxyPostType == null ? null : proxyPostType,
        "isSuspended": isSuspended == null ? null : isSuspended,
        "isLimitedState": isLimitedState == null ? null : isLimitedState,
        "type": type == null ? null : purpleTypeValues.reverse[type],
    };
}

class Ec1C621F48B1PreviewContent {
    FluffyBodyModel bodyModel;
    bool isFullContent;
    String subtitle;

    Ec1C621F48B1PreviewContent({
        this.bodyModel,
        this.isFullContent,
        this.subtitle,
    });

    factory Ec1C621F48B1PreviewContent.fromJson(String str) => Ec1C621F48B1PreviewContent.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Ec1C621F48B1PreviewContent.fromMap(Map<String, dynamic> json) => Ec1C621F48B1PreviewContent(
        bodyModel: json["bodyModel"] == null ? null : FluffyBodyModel.fromMap(json["bodyModel"]),
        isFullContent: json["isFullContent"] == null ? null : json["isFullContent"],
        subtitle: json["subtitle"] == null ? null : json["subtitle"],
    );

    Map<String, dynamic> toMap() => {
        "bodyModel": bodyModel == null ? null : bodyModel.toMap(),
        "isFullContent": isFullContent == null ? null : isFullContent,
        "subtitle": subtitle == null ? null : subtitle,
    };
}

class FluffyBodyModel {
    List<FluffyParagraph> paragraphs;
    List<BodyModelSection> sections;

    FluffyBodyModel({
        this.paragraphs,
        this.sections,
    });

    factory FluffyBodyModel.fromJson(String str) => FluffyBodyModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory FluffyBodyModel.fromMap(Map<String, dynamic> json) => FluffyBodyModel(
        paragraphs: json["paragraphs"] == null ? null : List<FluffyParagraph>.from(json["paragraphs"].map((x) => FluffyParagraph.fromMap(x))),
        sections: json["sections"] == null ? null : List<BodyModelSection>.from(json["sections"].map((x) => BodyModelSection.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "paragraphs": paragraphs == null ? null : List<dynamic>.from(paragraphs.map((x) => x.toMap())),
        "sections": sections == null ? null : List<dynamic>.from(sections.map((x) => x.toMap())),
    };
}

class FluffyParagraph {
    String name;
    int type;
    String text;
    int layout;
    LogoImage metadata;
    int alignment;

    FluffyParagraph({
        this.name,
        this.type,
        this.text,
        this.layout,
        this.metadata,
        this.alignment,
    });

    factory FluffyParagraph.fromJson(String str) => FluffyParagraph.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory FluffyParagraph.fromMap(Map<String, dynamic> json) => FluffyParagraph(
        name: json["name"] == null ? null : json["name"],
        type: json["type"] == null ? null : json["type"],
        text: json["text"] == null ? null : json["text"],
        layout: json["layout"] == null ? null : json["layout"],
        metadata: json["metadata"] == null ? null : LogoImage.fromMap(json["metadata"]),
        alignment: json["alignment"] == null ? null : json["alignment"],
    );

    Map<String, dynamic> toMap() => {
        "name": name == null ? null : name,
        "type": type == null ? null : type,
        "text": text == null ? null : text,
        "layout": layout == null ? null : layout,
        "metadata": metadata == null ? null : metadata.toMap(),
        "alignment": alignment == null ? null : alignment,
    };
}

class User {
    String userId;
    String name;
    String username;
    int createdAt;
    String imageId;
    String backgroundImageId;
    String bio;
    String twitterScreenName;
    String facebookAccountId;
    int allowNotes;
    int mediumMemberAt;
    bool isNsfw;
    bool isWriterProgramEnrolled;
    bool isQuarantined;
    bool isSuspended;
    UserType type;
    int firstOpenedAndroidApp;
    int firstOpenedIosApp;

    User({
        this.userId,
        this.name,
        this.username,
        this.createdAt,
        this.imageId,
        this.backgroundImageId,
        this.bio,
        this.twitterScreenName,
        this.facebookAccountId,
        this.allowNotes,
        this.mediumMemberAt,
        this.isNsfw,
        this.isWriterProgramEnrolled,
        this.isQuarantined,
        this.isSuspended,
        this.type,
        this.firstOpenedAndroidApp,
        this.firstOpenedIosApp,
    });

    factory User.fromJson(String str) => User.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory User.fromMap(Map<String, dynamic> json) => User(
        userId: json["userId"] == null ? null : json["userId"],
        name: json["name"] == null ? null : json["name"],
        username: json["username"] == null ? null : json["username"],
        createdAt: json["createdAt"] == null ? null : json["createdAt"],
        imageId: json["imageId"] == null ? null : json["imageId"],
        backgroundImageId: json["backgroundImageId"] == null ? null : json["backgroundImageId"],
        bio: json["bio"] == null ? null : json["bio"],
        twitterScreenName: json["twitterScreenName"] == null ? null : json["twitterScreenName"],
        facebookAccountId: json["facebookAccountId"] == null ? null : json["facebookAccountId"],
        allowNotes: json["allowNotes"] == null ? null : json["allowNotes"],
        mediumMemberAt: json["mediumMemberAt"] == null ? null : json["mediumMemberAt"],
        isNsfw: json["isNsfw"] == null ? null : json["isNsfw"],
        isWriterProgramEnrolled: json["isWriterProgramEnrolled"] == null ? null : json["isWriterProgramEnrolled"],
        isQuarantined: json["isQuarantined"] == null ? null : json["isQuarantined"],
        isSuspended: json["isSuspended"] == null ? null : json["isSuspended"],
        type: json["type"] == null ? null : userTypeValues.map[json["type"]],
        firstOpenedAndroidApp: json["firstOpenedAndroidApp"] == null ? null : json["firstOpenedAndroidApp"],
        firstOpenedIosApp: json["firstOpenedIosApp"] == null ? null : json["firstOpenedIosApp"],
    );

    Map<String, dynamic> toMap() => {
        "userId": userId == null ? null : userId,
        "name": name == null ? null : name,
        "username": username == null ? null : username,
        "createdAt": createdAt == null ? null : createdAt,
        "imageId": imageId == null ? null : imageId,
        "backgroundImageId": backgroundImageId == null ? null : backgroundImageId,
        "bio": bio == null ? null : bio,
        "twitterScreenName": twitterScreenName == null ? null : twitterScreenName,
        "facebookAccountId": facebookAccountId == null ? null : facebookAccountId,
        "allowNotes": allowNotes == null ? null : allowNotes,
        "mediumMemberAt": mediumMemberAt == null ? null : mediumMemberAt,
        "isNsfw": isNsfw == null ? null : isNsfw,
        "isWriterProgramEnrolled": isWriterProgramEnrolled == null ? null : isWriterProgramEnrolled,
        "isQuarantined": isQuarantined == null ? null : isQuarantined,
        "isSuspended": isSuspended == null ? null : isSuspended,
        "type": type == null ? null : userTypeValues.reverse[type],
        "firstOpenedAndroidApp": firstOpenedAndroidApp == null ? null : firstOpenedAndroidApp,
        "firstOpenedIosApp": firstOpenedIosApp == null ? null : firstOpenedIosApp,
    };
}

enum UserType { USER }

final userTypeValues = EnumValues({
    "User": UserType.USER
});

class StreamItem {
    int createdAt;
    String randomId;
    StreamItemSection section;
    String itemType;
    String type;

    StreamItem({
        this.createdAt,
        this.randomId,
        this.section,
        this.itemType,
        this.type,
    });

    factory StreamItem.fromJson(String str) => StreamItem.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory StreamItem.fromMap(Map<String, dynamic> json) => StreamItem(
        createdAt: json["createdAt"] == null ? null : json["createdAt"],
        randomId: json["randomId"] == null ? null : json["randomId"],
        section: json["section"] == null ? null : StreamItemSection.fromMap(json["section"]),
        itemType: json["itemType"] == null ? null : json["itemType"],
        type: json["type"] == null ? null : json["type"],
    );

    Map<String, dynamic> toMap() => {
        "createdAt": createdAt == null ? null : createdAt,
        "randomId": randomId == null ? null : randomId,
        "section": section == null ? null : section.toMap(),
        "itemType": itemType == null ? null : itemType,
        "type": type == null ? null : type,
    };
}

class StreamItemSection {
    List<Item> items;
    int layout;
    Heading heading;

    StreamItemSection({
        this.items,
        this.layout,
        this.heading,
    });

    factory StreamItemSection.fromJson(String str) => StreamItemSection.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory StreamItemSection.fromMap(Map<String, dynamic> json) => StreamItemSection(
        items: json["items"] == null ? null : List<Item>.from(json["items"].map((x) => Item.fromMap(x))),
        layout: json["layout"] == null ? null : json["layout"],
        heading: json["heading"] == null ? null : Heading.fromMap(json["heading"]),
    );

    Map<String, dynamic> toMap() => {
        "items": items == null ? null : List<dynamic>.from(items.map((x) => x.toMap())),
        "layout": layout == null ? null : layout,
        "heading": heading == null ? null : heading.toMap(),
    };
}

class Heading {
    String fallbackTitle;
    HeadingBasic headingBasic;
    String headingType;

    Heading({
        this.fallbackTitle,
        this.headingBasic,
        this.headingType,
    });

    factory Heading.fromJson(String str) => Heading.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Heading.fromMap(Map<String, dynamic> json) => Heading(
        fallbackTitle: json["fallbackTitle"] == null ? null : json["fallbackTitle"],
        headingBasic: json["headingBasic"] == null ? null : HeadingBasic.fromMap(json["headingBasic"]),
        headingType: json["headingType"] == null ? null : json["headingType"],
    );

    Map<String, dynamic> toMap() => {
        "fallbackTitle": fallbackTitle == null ? null : fallbackTitle,
        "headingBasic": headingBasic == null ? null : headingBasic.toMap(),
        "headingType": headingType == null ? null : headingType,
    };
}

class HeadingBasic {
    String title;

    HeadingBasic({
        this.title,
    });

    factory HeadingBasic.fromJson(String str) => HeadingBasic.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory HeadingBasic.fromMap(Map<String, dynamic> json) => HeadingBasic(
        title: json["title"] == null ? null : json["title"],
    );

    Map<String, dynamic> toMap() => {
        "title": title == null ? null : title,
    };
}

class Item {
    PostClass post;
    ItemType itemType;

    Item({
        this.post,
        this.itemType,
    });

    factory Item.fromJson(String str) => Item.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Item.fromMap(Map<String, dynamic> json) => Item(
        post: json["post"] == null ? null : PostClass.fromMap(json["post"]),
        itemType: json["itemType"] == null ? null : itemTypeValues.map[json["itemType"]],
    );

    Map<String, dynamic> toMap() => {
        "post": post == null ? null : post.toMap(),
        "itemType": itemType == null ? null : itemTypeValues.reverse[itemType],
    };
}

enum ItemType { POST }

final itemTypeValues = EnumValues({
    "post": ItemType.POST
});

class PostClass {
    String postId;

    PostClass({
        this.postId,
    });

    factory PostClass.fromJson(String str) => PostClass.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory PostClass.fromMap(Map<String, dynamic> json) => PostClass(
        postId: json["postId"] == null ? null : json["postId"],
    );

    Map<String, dynamic> toMap() => {
        "postId": postId == null ? null : postId,
    };
}

class EnumValues<T> {
    Map<String, T> map;
    Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
