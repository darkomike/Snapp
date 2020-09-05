

Map<String, String>  countryMap  = {
  "Afghanistan (+93)": "+93",
  "Albania (+355)": "+355",
  "Algeria (+213)": "+213",
  "American Samoa (+1684)": "+1684",
  "Andorra (+376)": "+376",
  "Angola (+244)": "244",
  "Anguilla (+1264)": "+1264",
//  "Antarctica (010)": "010",
  "Antigua and Barbuda (+1268)": "+1268",
  "Argentina (+54)": "+54",
  "Armenia (+374)": "+374",
  "Aruba (+297)": "+297",
  "Australia (+61)": "+61",
  "Austria (+43)": "+43",
  "Azerbaijan (+994)": "+994",
  "Bahamas (+1242)": "+1242",
  "Bahrain (+973)": "+973",
  "Bangladesh (+880)": "+880",
  "Barbados (+1246)": "+1246",
  "Belarus (+375)": "+375",
  "Belgium (+32)": "+32",
  "Belize (+501)": "+501",
  "Benin (+229)": "+229",
  "Bermuda (+1441)": "+1441",
  "Bhutan (+975)": "+975",
  "Bolivia (+591)": "+591",
  "Bonaire, Sint Eustatius & Saba (+599)": "+599",
  "Bosnia & Herzegovina (+387)": "+387",
  "Botswana (+267)": "+267",
  "Brazil (+55)": "+55",
  "British Virgin Islands (+1284)": "+1284",
  "Brunei Darussalam (+673)": "+673",
  "Bulgaria (+359)": "+359",
  "Burkina Faso (+226)": "+226",
  "Burundi (+257)": "+257",
  "Cambodia (+855)": "+855",
  "Cameroon (+237)": "+237",
  "Canada (+1)": "+1",
  "Cape Verde (+238)": "+238",
  "Cayman Islands (+1345)": "+1345",
  "Central African Rep. (+236)": "+236",
  "Chad (+235)": "+235",
  "Chile (+56)": "+56",
  "China (+86)": "+86",
  "Colombia (+57)": "+57",
  "Comoros (+269)": "+269",
  "Congo Rep. (+242)": "+242",
  "Congo Dem. Rep. (+243)": "+243",
  "Cook Islands (+682)": "+682",
  "Costa Rica (+506)": "+506",
  "Croatia (+385)": "+385",
  "Cuba (+53)": "+53",
  "Curacao (+599)": "+599",
  "Cyprus (+357)": "+357",
  "Czech Republic (+420)": "+420",
  "Cote d'Ivoire (+225)": "+225",
  "Denmark (+45)": "+45",
  "Diego Garcia (+246)": "+246",
  "Djibouti (+253)": "+253",
  "Dominica (+1767)": "+1767",
  "Dominican Rep. (+1)": "+1",
  "Ecuador (+593)": "+593",
  "Egypt (+20)": "+20",
  "El Salvador (+503)": "+503",
  "Equatorial Guinea (+240)": "+240",
  "Eritrea (+291)": "+291",
  "Estonia (+372)": "+372",
  "Ethiopia (+251)": "+251",
  "Falkland Islands (+500)": "+500",
  "Faroe Islands (+298)": "+298",
  "Fiji (+679)": "+679",
  "Finland (+358)": "+358",
  "France (+33)": "+33",
  "French Guiana (+594)": "+594",
  "French Polynesia (+689)": "+689",
  "Gabon (+241)": "+241",
  "Gambia (+220)": "+220",
  "Georgia (+995)": "+995",
  "Germany (+49)": "+49",
  "Ghana (+233)": "+233",
  "Gibraltar (+350)": "+350",
  "Global Mobile Satellite (+881)": "+881",
  "Greece (+30)": "+30",
  "Greenland (+299)": "+299",
  "Grenada (+1473)": "+1473",
  "Guadeloupe (+590)": "+590",
  "Guam (+1671)": "+1671",
  "Guatemala (+502)": "+502",
  "Guinea (+224)": "+224",
  "Guinea-Bissau (+245)": "+254",
  "Guyana (+592)": "+592",
  "Haiti (+509)": "+509",
  "Honduras (+504)": "+504",
  "Hong kong (+852)": "+852",
  "Hungary (+36)": "+36",
};

class MyCountryCode{

  Map<String, String>  countryCodes = countryMap;

  List getCountryNames(Map map )
  {
    List values = [];

    for (String val in map.keys){
      values.add(val);
    }
    return values;
  }
  
  
  List getCountryCodes(Map map )
  {
    List values = [];

    for (String val in map.values){
      values.add(val);
    }
    return values;
  }



}