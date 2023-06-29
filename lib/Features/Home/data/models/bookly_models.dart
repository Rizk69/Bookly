/// kind : "books#volume"
/// id : "u13hVoYVZa8C"
/// etag : "BPtnWvi3OM0"
/// selfLink : "https://www.googleapis.com/books/v1/volumes/u13hVoYVZa8C"
/// volumeInfo : {"title":"Planning Extreme Programming","authors":["Kent Beck","Martin Fowler"],"publisher":"Addison-Wesley Professional","publishedDate":"2001","description":"Without careful ongoing planning, the software development process can fall apart. Extreme Programming (XP) is a new programming discipline, or methodology, that is geared toward the way that the vast majority of software development projects are handled -- in small teams. In this new book, noted software engineers Kent Beck and Martin Fowler show the reader how to properly plan a software development project with XP in mind. The authors lay out a proven strategy that forces the reader to plan as their software project unfolds, and therefore avoid many of the nasty problems that can potentially spring up along the way.","industryIdentifiers":[{"type":"ISBN_10","identifier":"0201710919"},{"type":"ISBN_13","identifier":"9780201710915"}],"readingModes":{"text":false,"image":true},"pageCount":162,"printType":"BOOK","categories":["Computers"],"averageRating":4,"ratingsCount":6,"maturityRating":"NOT_MATURE","allowAnonLogging":false,"contentVersion":"0.2.4.0.preview.1","panelizationSummary":{"containsEpubBubbles":false,"containsImageBubbles":false},"imageLinks":{"smallThumbnail":"http://books.google.com/books/content?id=u13hVoYVZa8C&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api","thumbnail":"http://books.google.com/books/content?id=u13hVoYVZa8C&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"},"language":"en","previewLink":"http://books.google.com.eg/books?id=u13hVoYVZa8C&printsec=frontcover&dq=programming&hl=&cd=1&source=gbs_api","infoLink":"http://books.google.com.eg/books?id=u13hVoYVZa8C&dq=programming&hl=&source=gbs_api","canonicalVolumeLink":"https://books.google.com/books/about/Planning_Extreme_Programming.html?hl=&id=u13hVoYVZa8C"}
/// saleInfo : {"country":"EG","saleability":"NOT_FOR_SALE","isEbook":false}
/// accessInfo : {"country":"EG","viewability":"PARTIAL","embeddable":true,"publicDomain":false,"textToSpeechPermission":"ALLOWED_FOR_ACCESSIBILITY","epub":{"isAvailable":false},"pdf":{"isAvailable":false},"webReaderLink":"http://play.google.com/books/reader?id=u13hVoYVZa8C&hl=&source=gbs_api","accessViewStatus":"SAMPLE","quoteSharingAllowed":false}
/// searchInfo : {"textSnippet":"In this new book, noted software engineers Kent Beck and Martin Fowler show the reader how to properly plan a software development project with XP in mind."}

class BooklyModels {
  String? _kind;
  String? _id;
  String? _etag;
  String? _selfLink;
  VolumeInfo? _volumeInfo;
  SaleInfo? _saleInfo;
  AccessInfo? _accessInfo;
  SearchInfo? _searchInfo;

  String? get kind => _kind;

  String? get id => _id;

  String? get etag => _etag;

  String? get selfLink => _selfLink;

  VolumeInfo? get volumeInfo => _volumeInfo;

  SaleInfo? get saleInfo => _saleInfo;

  AccessInfo? get accessInfo => _accessInfo;

  SearchInfo? get searchInfo => _searchInfo;

  BooklyModels(
      {String? kind,
      String? id,
      String? etag,
      String? selfLink,
      VolumeInfo? volumeInfo,
      SaleInfo? saleInfo,
      AccessInfo? accessInfo,
      SearchInfo? searchInfo}) {
    _kind = kind;
    _id = id;
    _etag = etag;
    _selfLink = selfLink;
    _volumeInfo = volumeInfo;
    _saleInfo = saleInfo;
    _accessInfo = accessInfo;
    _searchInfo = searchInfo;
  }

  BooklyModels.fromJson(dynamic json) {
    _kind = json["kind"];
    _id = json["id"];
    _etag = json["etag"];
    _selfLink = json["selfLink"];
    _volumeInfo = json["volumeInfo"] != null
        ? VolumeInfo.fromJson(json["volumeInfo"])
        : null;
    _saleInfo =
        json["saleInfo"] != null ? SaleInfo.fromJson(json["saleInfo"]) : null;
    _accessInfo = json["accessInfo"] != null
        ? AccessInfo.fromJson(json["accessInfo"])
        : null;
    _searchInfo = json["searchInfo"] != null
        ? SearchInfo.fromJson(json["searchInfo"])
        : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["kind"] = _kind;
    map["id"] = _id;
    map["etag"] = _etag;
    map["selfLink"] = _selfLink;
    if (_volumeInfo != null) {
      map["volumeInfo"] = _volumeInfo?.toJson();
    }
    if (_saleInfo != null) {
      map["saleInfo"] = _saleInfo?.toJson();
    }
    if (_accessInfo != null) {
      map["accessInfo"] = _accessInfo?.toJson();
    }
    if (_searchInfo != null) {
      map["searchInfo"] = _searchInfo?.toJson();
    }
    return map;
  }
}

/// textSnippet : "In this new book, noted software engineers Kent Beck and Martin Fowler show the reader how to properly plan a software development project with XP in mind."

class SearchInfo {
  String? _textSnippet;

  String? get textSnippet => _textSnippet;

  SearchInfo({String? textSnippet}) {
    _textSnippet = textSnippet;
  }

  SearchInfo.fromJson(dynamic json) {
    _textSnippet = json["textSnippet"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["textSnippet"] = _textSnippet;
    return map;
  }
}

/// country : "EG"
/// viewability : "PARTIAL"
/// embeddable : true
/// publicDomain : false
/// textToSpeechPermission : "ALLOWED_FOR_ACCESSIBILITY"
/// epub : {"isAvailable":false}
/// pdf : {"isAvailable":false}
/// webReaderLink : "http://play.google.com/books/reader?id=u13hVoYVZa8C&hl=&source=gbs_api"
/// accessViewStatus : "SAMPLE"
/// quoteSharingAllowed : false

class AccessInfo {
  String? _country;
  String? _viewability;
  bool? _embeddable;
  bool? _publicDomain;
  String? _textToSpeechPermission;
  Epub? _epub;
  Pdf? _pdf;
  String? _webReaderLink;
  String? _accessViewStatus;
  bool? _quoteSharingAllowed;

  String? get country => _country;

  String? get viewability => _viewability;

  bool? get embeddable => _embeddable;

  bool? get publicDomain => _publicDomain;

  String? get textToSpeechPermission => _textToSpeechPermission;

  Epub? get epub => _epub;

  Pdf? get pdf => _pdf;

  String? get webReaderLink => _webReaderLink;

  String? get accessViewStatus => _accessViewStatus;

  bool? get quoteSharingAllowed => _quoteSharingAllowed;

  AccessInfo(
      {String? country,
      String? viewability,
      bool? embeddable,
      bool? publicDomain,
      String? textToSpeechPermission,
      Epub? epub,
      Pdf? pdf,
      String? webReaderLink,
      String? accessViewStatus,
      bool? quoteSharingAllowed}) {
    _country = country;
    _viewability = viewability;
    _embeddable = embeddable;
    _publicDomain = publicDomain;
    _textToSpeechPermission = textToSpeechPermission;
    _epub = epub;
    _pdf = pdf;
    _webReaderLink = webReaderLink;
    _accessViewStatus = accessViewStatus;
    _quoteSharingAllowed = quoteSharingAllowed;
  }

  AccessInfo.fromJson(dynamic json) {
    _country = json["country"];
    _viewability = json["viewability"];
    _embeddable = json["embeddable"];
    _publicDomain = json["publicDomain"];
    _textToSpeechPermission = json["textToSpeechPermission"];
    _epub = json["epub"] != null ? Epub.fromJson(json["epub"]) : null;
    _pdf = json["pdf"] != null ? Pdf.fromJson(json["pdf"]) : null;
    _webReaderLink = json["webReaderLink"];
    _accessViewStatus = json["accessViewStatus"];
    _quoteSharingAllowed = json["quoteSharingAllowed"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["country"] = _country;
    map["viewability"] = _viewability;
    map["embeddable"] = _embeddable;
    map["publicDomain"] = _publicDomain;
    map["textToSpeechPermission"] = _textToSpeechPermission;
    if (_epub != null) {
      map["epub"] = _epub?.toJson();
    }
    if (_pdf != null) {
      map["pdf"] = _pdf?.toJson();
    }
    map["webReaderLink"] = _webReaderLink;
    map["accessViewStatus"] = _accessViewStatus;
    map["quoteSharingAllowed"] = _quoteSharingAllowed;
    return map;
  }
}

/// isAvailable : false

class Pdf {
  bool? _isAvailable;

  bool? get isAvailable => _isAvailable;

  Pdf({bool? isAvailable}) {
    _isAvailable = isAvailable;
  }

  Pdf.fromJson(dynamic json) {
    _isAvailable = json["isAvailable"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["isAvailable"] = _isAvailable;
    return map;
  }
}

/// isAvailable : false

class Epub {
  bool? _isAvailable;

  bool? get isAvailable => _isAvailable;

  Epub({bool? isAvailable}) {
    _isAvailable = isAvailable;
  }

  Epub.fromJson(dynamic json) {
    _isAvailable = json["isAvailable"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["isAvailable"] = _isAvailable;
    return map;
  }
}

/// country : "EG"
/// saleability : "NOT_FOR_SALE"
/// isEbook : false

class SaleInfo {
  String? _country;
  String? _saleability;
  bool? _isEbook;

  String? get country => _country;

  String? get saleability => _saleability;

  bool? get isEbook => _isEbook;

  SaleInfo({String? country, String? saleability, bool? isEbook}) {
    _country = country;
    _saleability = saleability;
    _isEbook = isEbook;
  }

  SaleInfo.fromJson(dynamic json) {
    _country = json["country"];
    _saleability = json["saleability"];
    _isEbook = json["isEbook"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["country"] = _country;
    map["saleability"] = _saleability;
    map["isEbook"] = _isEbook;
    return map;
  }
}

/// title : "Planning Extreme Programming"
/// authors : ["Kent Beck","Martin Fowler"]
/// publisher : "Addison-Wesley Professional"
/// publishedDate : "2001"
/// description : "Without careful ongoing planning, the software development process can fall apart. Extreme Programming (XP) is a new programming discipline, or methodology, that is geared toward the way that the vast majority of software development projects are handled -- in small teams. In this new book, noted software engineers Kent Beck and Martin Fowler show the reader how to properly plan a software development project with XP in mind. The authors lay out a proven strategy that forces the reader to plan as their software project unfolds, and therefore avoid many of the nasty problems that can potentially spring up along the way."
/// industryIdentifiers : [{"type":"ISBN_10","identifier":"0201710919"},{"type":"ISBN_13","identifier":"9780201710915"}]
/// readingModes : {"text":false,"image":true}
/// pageCount : 162
/// printType : "BOOK"
/// categories : ["Computers"]
/// averageRating : 4
/// ratingsCount : 6
/// maturityRating : "NOT_MATURE"
/// allowAnonLogging : false
/// contentVersion : "0.2.4.0.preview.1"
/// panelizationSummary : {"containsEpubBubbles":false,"containsImageBubbles":false}
/// imageLinks : {"smallThumbnail":"http://books.google.com/books/content?id=u13hVoYVZa8C&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api","thumbnail":"http://books.google.com/books/content?id=u13hVoYVZa8C&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"}
/// language : "en"
/// previewLink : "http://books.google.com.eg/books?id=u13hVoYVZa8C&printsec=frontcover&dq=programming&hl=&cd=1&source=gbs_api"
/// infoLink : "http://books.google.com.eg/books?id=u13hVoYVZa8C&dq=programming&hl=&source=gbs_api"
/// canonicalVolumeLink : "https://books.google.com/books/about/Planning_Extreme_Programming.html?hl=&id=u13hVoYVZa8C"

class VolumeInfo {
  String? _title;
  List<String>? _authors;
  String? _publisher;
  String? _publishedDate;
  String? _description;
  List<IndustryIdentifiers>? _industryIdentifiers;
  ReadingModes? _readingModes;
  int? _pageCount;
  String? _printType;
  List<String>? _categories;
  int? _averageRating;
  int? _ratingsCount;
  String? _maturityRating;
  bool? _allowAnonLogging;
  String? _contentVersion;
  PanelizationSummary? _panelizationSummary;
  ImageLinks? _imageLinks;
  String? _language;
  String? _previewLink;
  String? _infoLink;
  String? _canonicalVolumeLink;

  String? get title => _title;

  List<String>? get authors => _authors;

  String? get publisher => _publisher;

  String? get publishedDate => _publishedDate;

  String? get description => _description;

  List<IndustryIdentifiers>? get industryIdentifiers => _industryIdentifiers;

  ReadingModes? get readingModes => _readingModes;

  int? get pageCount => _pageCount;

  String? get printType => _printType;

  List<String>? get categories => _categories;

  int? get averageRating => _averageRating;

  int? get ratingsCount => _ratingsCount;

  String? get maturityRating => _maturityRating;

  bool? get allowAnonLogging => _allowAnonLogging;

  String? get contentVersion => _contentVersion;

  PanelizationSummary? get panelizationSummary => _panelizationSummary;

  ImageLinks? get imageLinks => _imageLinks;

  String? get language => _language;

  String? get previewLink => _previewLink;

  String? get infoLink => _infoLink;

  String? get canonicalVolumeLink => _canonicalVolumeLink;

  VolumeInfo(
      {String? title,
      List<String>? authors,
      String? publisher,
      String? publishedDate,
      String? description,
      List<IndustryIdentifiers>? industryIdentifiers,
      ReadingModes? readingModes,
      int? pageCount,
      String? printType,
      List<String>? categories,
      int? averageRating,
      int? ratingsCount,
      String? maturityRating,
      bool? allowAnonLogging,
      String? contentVersion,
      PanelizationSummary? panelizationSummary,
      ImageLinks? imageLinks,
      String? language,
      String? previewLink,
      String? infoLink,
      String? canonicalVolumeLink}) {
    _title = title;
    _authors = authors;
    _publisher = publisher;
    _publishedDate = publishedDate;
    _description = description;
    _industryIdentifiers = industryIdentifiers;
    _readingModes = readingModes;
    _pageCount = pageCount;
    _printType = printType;
    _categories = categories;
    _averageRating = averageRating;
    _ratingsCount = ratingsCount;
    _maturityRating = maturityRating;
    _allowAnonLogging = allowAnonLogging;
    _contentVersion = contentVersion;
    _panelizationSummary = panelizationSummary;
    _imageLinks = imageLinks;
    _language = language;
    _previewLink = previewLink;
    _infoLink = infoLink;
    _canonicalVolumeLink = canonicalVolumeLink;
  }

  VolumeInfo.fromJson(dynamic json) {
    _title = json["title"];
    _authors = json["authors"] != null ? json["authors"].cast<String>() : [];
    _publisher = json["publisher"];
    _publishedDate = json["publishedDate"];
    _description = json["description"];
    if (json["industryIdentifiers"] != null) {
      _industryIdentifiers = [];
      json["industryIdentifiers"].forEach((v) {
        _industryIdentifiers?.add(IndustryIdentifiers.fromJson(v));
      });
    }
    _readingModes = json["readingModes"] != null
        ? ReadingModes.fromJson(json["readingModes"])
        : null;
    _pageCount = json["pageCount"];
    _printType = json["printType"];
    _categories =
        json["categories"] != null ? json["categories"].cast<String>() : [];
    _averageRating = json["averageRating"];
    _ratingsCount = json["ratingsCount"];
    _maturityRating = json["maturityRating"];
    _allowAnonLogging = json["allowAnonLogging"];
    _contentVersion = json["contentVersion"];
    _panelizationSummary = json["panelizationSummary"] != null
        ? PanelizationSummary.fromJson(json["panelizationSummary"])
        : null;
    _imageLinks = json["imageLinks"] != null
        ? ImageLinks.fromJson(json["imageLinks"])
        : null;
    _language = json["language"];
    _previewLink = json["previewLink"];
    _infoLink = json["infoLink"];
    _canonicalVolumeLink = json["canonicalVolumeLink"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["title"] = _title;
    map["authors"] = _authors;
    map["publisher"] = _publisher;
    map["publishedDate"] = _publishedDate;
    map["description"] = _description;
    if (_industryIdentifiers != null) {
      map["industryIdentifiers"] =
          _industryIdentifiers?.map((v) => v.toJson()).toList();
    }
    if (_readingModes != null) {
      map["readingModes"] = _readingModes?.toJson();
    }
    map["pageCount"] = _pageCount;
    map["printType"] = _printType;
    map["categories"] = _categories;
    map["averageRating"] = _averageRating;
    map["ratingsCount"] = _ratingsCount;
    map["maturityRating"] = _maturityRating;
    map["allowAnonLogging"] = _allowAnonLogging;
    map["contentVersion"] = _contentVersion;
    if (_panelizationSummary != null) {
      map["panelizationSummary"] = _panelizationSummary?.toJson();
    }
    if (_imageLinks != null) {
      map["imageLinks"] = _imageLinks?.toJson();
    }
    map["language"] = _language;
    map["previewLink"] = _previewLink;
    map["infoLink"] = _infoLink;
    map["canonicalVolumeLink"] = _canonicalVolumeLink;
    return map;
  }
}

/// smallThumbnail : "http://books.google.com/books/content?id=u13hVoYVZa8C&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api"
/// thumbnail : "http://books.google.com/books/content?id=u13hVoYVZa8C&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"

class ImageLinks {
  String? _smallThumbnail;
  String? _thumbnail;

  String? get smallThumbnail => _smallThumbnail;

  String? get thumbnail => _thumbnail;

  ImageLinks({String? smallThumbnail, String? thumbnail}) {
    _smallThumbnail = smallThumbnail;
    _thumbnail = thumbnail;
  }

  ImageLinks.fromJson(dynamic json) {
    _smallThumbnail = json["smallThumbnail"];
    _thumbnail = json["thumbnail"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["smallThumbnail"] = _smallThumbnail;
    map["thumbnail"] = _thumbnail;
    return map;
  }
}

/// containsEpubBubbles : false
/// containsImageBubbles : false

class PanelizationSummary {
  bool? _containsEpubBubbles;
  bool? _containsImageBubbles;

  bool? get containsEpubBubbles => _containsEpubBubbles;

  bool? get containsImageBubbles => _containsImageBubbles;

  PanelizationSummary({bool? containsEpubBubbles, bool? containsImageBubbles}) {
    _containsEpubBubbles = containsEpubBubbles;
    _containsImageBubbles = containsImageBubbles;
  }

  PanelizationSummary.fromJson(dynamic json) {
    _containsEpubBubbles = json["containsEpubBubbles"];
    _containsImageBubbles = json["containsImageBubbles"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["containsEpubBubbles"] = _containsEpubBubbles;
    map["containsImageBubbles"] = _containsImageBubbles;
    return map;
  }
}

/// text : false
/// image : true

class ReadingModes {
  bool? _text;
  bool? _image;

  bool? get text => _text;

  bool? get image => _image;

  ReadingModes({bool? text, bool? image}) {
    _text = text;
    _image = image;
  }

  ReadingModes.fromJson(dynamic json) {
    _text = json["text"];
    _image = json["image"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["text"] = _text;
    map["image"] = _image;
    return map;
  }
}

/// type : "ISBN_10"
/// identifier : "0201710919"

class IndustryIdentifiers {
  String? _type;
  String? _identifier;

  String? get type => _type;

  String? get identifier => _identifier;

  IndustryIdentifiers({String? type, String? identifier}) {
    _type = type;
    _identifier = identifier;
  }

  IndustryIdentifiers.fromJson(dynamic json) {
    _type = json["type"];
    _identifier = json["identifier"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["type"] = _type;
    map["identifier"] = _identifier;
    return map;
  }
}
