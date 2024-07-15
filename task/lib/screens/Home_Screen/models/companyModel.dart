
class Company {
  final String imageUrl;
  final String name;
  final String email;

  Company({required this.imageUrl, required this.name, required this.email});
}

List<Company> companyList = [
  Company(
    imageUrl:
    'https://static.wixstatic.com/media/9f3cdc_48f6a5b5dac949aba098e24bae83cbfd~mv2.png/v1/fill/w_131,h_108,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/9f3cdc_48f6a5b5dac949aba098e24bae83cbfd~mv2.png',
    name: 'Company 1',
    email: 'company1@example.com',
  ),
  Company(
    imageUrl:
    'https://static.wixstatic.com/media/9f3cdc_48f6a5b5dac949aba098e24bae83cbfd~mv2.png/v1/fill/w_131,h_108,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/9f3cdc_48f6a5b5dac949aba098e24bae83cbfd~mv2.png',
    name: 'Company 2',
    email: 'company2@example.com',
  ),
  Company(
    imageUrl:
    'https://th.bing.com/th/id/OIP.I2JUxrjw9kJgLMixJiIQaAAAAA?rs=1&pid=ImgDetMain',
    name: 'Company 3',
    email: 'company3@example.com',
  ),
  Company(
    imageUrl:
    'https://th.bing.com/th/id/OIP.I2JUxrjw9kJgLMixJiIQaAAAAA?rs=1&pid=ImgDetMain',
    name: 'Company 4',
    email: 'company4@example.com',
  ),
  Company(
    imageUrl:
    'data:image/png;base64,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',
    name: 'Company 5',
    email: 'company5@example.com',
  ),
  Company(
    imageUrl: 'https://th.bing.com/th/id/OIP.I2JUxrjw9kJgLMixJiIQaAAAAA?rs=1&pid=ImgDetMain',
    name: 'Company 6',
    email: 'company6@example.com',
  ),
  Company(
    imageUrl:'https://th.bing.com/th/id/OIP.I2JUxrjw9kJgLMixJiIQaAAAAA?rs=1&pid=ImgDetMain',
    name: 'Company 7',
    email: 'company7@example.com',
  ),
  Company(
    imageUrl: 'https://static.wixstatic.com/media/9f3cdc_48f6a5b5dac949aba098e24bae83cbfd~mv2.png/v1/fill/w_131,h_108,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/9f3cdc_48f6a5b5dac949aba098e24bae83cbfd~mv2.pnghttps://example.com/image8.jpg',
    name: 'Company 8',
    email: 'company8@example.com',
  ),
  Company(
    imageUrl: 'https://static.wixstatic.com/media/9f3cdc_48f6a5b5dac949aba098e24bae83cbfd~mv2.png/v1/fill/w_131,h_108,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/9f3cdc_48f6a5b5dac949aba098e24bae83cbfd~mv2.png',
    name: 'Company 9',
    email: 'company9@example.com',
  ),
  Company(
    imageUrl: 'https://static.wixstatic.com/media/9f3cdc_48f6a5b5dac949aba098e24bae83cbfd~mv2.png/v1/fill/w_131,h_108,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/9f3cdc_48f6a5b5dac949aba098e24bae83cbfd~mv2.png',
    name: 'Company 10',
    email: 'company10@example.com',
  ),
  Company(
    imageUrl: 'https://static.wixstatic.com/media/9f3cdc_48f6a5b5dac949aba098e24bae83cbfd~mv2.png/v1/fill/w_131,h_108,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/9f3cdc_48f6a5b5dac949aba098e24bae83cbfd~mv2.png',
    name: 'Company 11',
    email: 'company11@example.com',
  ),
  Company(
    imageUrl: 'https://static.wixstatic.com/media/9f3cdc_48f6a5b5dac949aba098e24bae83cbfd~mv2.png/v1/fill/w_131,h_108,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/9f3cdc_48f6a5b5dac949aba098e24bae83cbfd~mv2.png',
    name: 'Company 12',
    email: 'company12@example.com',
  ),
  Company(
    imageUrl: 'https://static.wixstatic.com/media/9f3cdc_48f6a5b5dac949aba098e24bae83cbfd~mv2.png/v1/fill/w_131,h_108,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/9f3cdc_48f6a5b5dac949aba098e24bae83cbfd~mv2.png',
    name: 'Company 13',
    email: 'company13@example.com',
  ),
  Company(
    imageUrl: 'https://static.wixstatic.com/media/9f3cdc_48f6a5b5dac949aba098e24bae83cbfd~mv2.png/v1/fill/w_131,h_108,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/9f3cdc_48f6a5b5dac949aba098e24bae83cbfd~mv2.png',
    name: 'Company 14',
    email: 'company14@example.com',
  ),
  Company(
    imageUrl: 'https://static.wixstatic.com/media/9f3cdc_48f6a5b5dac949aba098e24bae83cbfd~mv2.png/v1/fill/w_131,h_108,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/9f3cdc_48f6a5b5dac949aba098e24bae83cbfd~mv2.png',
    name: 'Company 15',
    email: 'company15@example.com',
  ),
  Company(
    imageUrl: 'https://static.wixstatic.com/media/9f3cdc_48f6a5b5dac949aba098e24bae83cbfd~mv2.png/v1/fill/w_131,h_108,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/9f3cdc_48f6a5b5dac949aba098e24bae83cbfd~mv2.png',
    name: 'Company 16',
    email: 'company16@example.com',
  ),
  Company(
    imageUrl: 'https://static.wixstatic.com/media/9f3cdc_48f6a5b5dac949aba098e24bae83cbfd~mv2.png/v1/fill/w_131,h_108,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/9f3cdc_48f6a5b5dac949aba098e24bae83cbfd~mv2.png',
    name: 'Company 17',
    email: 'company17@example.com',
  ),
  Company(
    imageUrl: 'https://static.wixstatic.com/media/9f3cdc_48f6a5b5dac949aba098e24bae83cbfd~mv2.png/v1/fill/w_131,h_108,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/9f3cdc_48f6a5b5dac949aba098e24bae83cbfd~mv2.pnghttps://example.com/image18.jpg',
    name: 'Company 18',
    email: 'company18@example.com',
  ),
  Company(
    imageUrl: 'https://static.wixstatic.com/media/9f3cdc_48f6a5b5dac949aba098e24bae83cbfd~mv2.png/v1/fill/w_131,h_108,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/9f3cdc_48f6a5b5dac949aba098e24bae83cbfd~mv2.png',
    name: 'Company 19',
    email: 'company19@example.com',
  ),
  Company(
    imageUrl: 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAACoCAMAAABt9SM9AAABXFBMVEX///8JJFMAAEUAAEEAAEYAHU8AIVEAEEoAG08ABUcEIlIAAEMAIFG4vMdOW3kAHlCUnK0aM2BGkMMrbJwAFEtFlMTc3+VGi8EqZZrV2d5DrMkqXpgyQWOwtMFIfcEraJpDUnPMz9hHh8EWLFhto9Irc58fdJMhbJMAEktDn8QseqNIgsBCpcVIdsAfeZRzrNMpT5BgjcxjlM55uNcAAD0dgpYrgqcqi6sqQopCssg/vclcg8l8vtkoTI3x8/VIaL2Di55Jb78biZY9wcjY4fBonM9gbIekqrgAADWAxNl5gJaFzdspPGMAco3o6+7b6fKXscgtWa47Wbqbw98AUY4za6SCm7tphK3B3utPbJ0pk6wAOYZ5tsbI2utyvNY8WZSMt9oAL4Cbw9Ol2ePE5exSkbIOL30AIHWZqNRwr7muu91vhceXv8laZoHAzOV8lM1em66Mr8GL1ttqn7QzvrjWAAALnElEQVR4nO2b+XfTxhaAtdnavCkRJosNNiZBCVsKgSwEVQnEzjNGoSGlFAp0oX2lj/S17/3/57y5o30keTlJTsw79/slia50LX2aO5oZORyHIAiCIAiCIAiCIAiCIAiCIAiCIAiCIAiCIAiCIAiCIAiCIAiCIAiCIAiCIAiCIAiCIMj/BU/THFIu+sSmkBfH3xwdfU3Y3d29ffvRo0dffXXv3v7+/vXrLy/61KaO+vHV2W99U54q6uo64S62LYa5ubmrs0vfZsq6a1/02UXY9Ys+A457dQyyZpeWrsSKMJQ1PYVY00Vl/oLPoX28SGXNLq0uJVrWPpV19/UFn1/A/DrPF7SLPQd7cTGQtbS6ei1VhlNTiDWZ53n9XCpR6HTUsdrsd8dgy5f18OHDm4ys+/d3zuP8Jqct8rwmncudE4slfRxZ5ccfQlmrIGvj4Vd+n7Xvy7o/JYV4oqti71wy6zwvjCHL3TyOlyHI2tiYifdZRNb9KSnEdu+cHodjyvp+7QMjC2xtzMT6rPtTU4jnxniyXmxSWYve0GEV6hBcbbzZuH4vkrXzfkoK8bwYS1b97draGiMLbL158wP3LlaGO+/dIUmaTt+plTNL1Y9lH93ukWCvPSRrXnAUQzO79JwSwbFkfXhMZH1I9VnEFkRf7gcta2fnHzkZ7JohqpZpypJYKadigyDWYmPcfF8VZJMEBblPeqLagbjegu3ronjQ5poN70jdcqKbMFgXD2pw6IGYQbhbvW/pXmapP+9lNmG7SDOX/cyC7ES3kMjiBUiyXsl19ert41jLok3Lt+XNCO0fvZYFsn7JzNBU5BLvo+iNejKmFsOY0EjcObsvmkFMM/U+15N5hZ6oovFyryVUg6Ashw/AVoGXqSyBT6GVgr1IZi3Y6mcuGhAo0Mx6mNmSwsx6eJ7dPFftnx7nyPo52OVdKOtZ1oy6q4MOTTHNqkaV9OKxUjxW0GOxeseCUysqpkJ9yoO+EsnizYJ3pEIzkAseQ1bV28cdyJqfmd5FyyCZQ1m8qVAlbOYxZL3dBFkf0rJuxXZ67Zfhs2fpBC2ZGjIr/X5DUMnna2ItiJ2oNGaRWEugTSyyVZcV2qA63X63o1vkIqpkQySLUBLkk37XEODidIeRdSDEkTTaPD1XcoE2KJ5kNnS4IyWSIZIFG1SVnJOhQ8uW+pEsGXKJeWX4Xa6sRF9tvwRbRFaqELvgSqh4XaXdpK1l3e+c+nD3JT/GNQ05FrMVUgoF1e8zXEfyKiMuyzS8fetdQQsPDGTZ9SQGuRUybRI2T1JVJafuZ1ZpQ0rIMjthZvKX2AxkqWWaK+dBVv5pc5MpQ+9p+JAdJxzuvAdZbCGWdZh+NKMNIEiTqemymB/jKuSmKoPotOoDhZFlnYTBnq7xxWpCFsMJSWd5LaJL7pdiRD2n2zAZWWbUdJpSeEqjnobu281I1ly8Zf2Q3vn1e5DFFGKH1J2UeAI7xIjV92OanoqZNAZzPKURj9mDQkJWIR7tkWtSaQVny+qSejdbXJC5aiTqoqUkZJUGsViTnJKXcJSs7+Oy4mW4kbW3/QvIShQifJTATNUqZqkquF5MYmPktNdd75o1NdncXSkhS0w8Vcn+1Yb/S1oWNFllEH2EkMxsq1pclphQQvb37I2Q9YIU4WZWn7Was458+IwpRLiGFrOTawwGRs+LDdiY7t1Hl/RCKjsfhuWXUJZykoiViQ7V5rJlQYMtdLzGBJlTO/TUmCwl2X+3BV/ucFn1f26mZC3BoHT159xjPiYK0YZrTg01/dg6ubwmu7Wr8IUWPXtNSQ33xZgs5lCbiBSgpDNk1chxpYLfmJqqbzWBzsfHWcnMZJNQ5kbJWtvMlrX6a+4htBajQoS7IuesRkBMTMVIC4EHfN9kmw5QiY2zJGae0il6tyUtqwmupKDwHJNtOkA3Ns6SmLvbqHp3ZqisV79FssIOHmQtDV+MOXz2Mfi1rPLFTs5u2bG6TvsqoiWjmw4vlMgSGFlkaEAvKSWrLGq8Fl3licKbTipzLTaCZ2/DOLLaXhGCrMdrx8GCFpG1NHJ14WNgk7T5UiNnJzLDSHVnpGGSZiDUuUaJrQb/kIlltWEMJkY7w23IzHwqWU/pC9Wv6ZuvKzdvXrs8M3Pp0srKyq2FjzlHhHwO2jzIYvtwLhYzUltJD6+RkoFLTl9SzZpY1rxEBqNirLCILCvdZk8ri/s9fP18hcq6TGXdunVrYUQZ7n0Ofi2Tp72ZsxvpszQhvRWOsKEPUfqpYHfiMqxbxXAE7gG9YXpuR7aeTha3GzQtVtb73ENIHX3a+xT+4Yp86qqGxxyLtjfSh2Q0O5WfUJYLc+Hkkjw8Z4upzKXiaWW5RylZl6isheylGODz3t5erOENSun7aDu1mkNOyChlPJeIBuh/Yc0gZRLa6USy7E4hmmH71CEzO5qBJ/MpZXF/HHl9FitraytnUPqRqNqL9/8wjtSZD3d0yzqY92IiG5P9ATQxmertYOo0iSwbppMSW83k/pXYpzDZNlqWkP7QBP86ymxZW1tbWXuTCiR8im9yyUSiyCf6OJha00uGEWuxlIi114M5H0z2rGSbhAnwRLJaZIKspvonGOubya19mR9D1qCaNeiIsLPKcGGB2MpYuIIKJCQ31kg/U4gtHtBz1byXlTUhOf2ndab5M7NOlbT6eKvoq/xksipErpwe2XIwIU84pCtFo2WR7lQbOpP+82g3u2Vts+OH1w8eUFfs9oYCy1JBL+J2dTLsERzvL5jtV+Wa37hcetJBbF6EtbZGcOLlgcxPJgsW0gpZy3R1OAV5EPRb7YbMjyWrLsLianPIUODf6afhApW1nVz8++uBJ+sTm8C2YMFTVrq9ZrPWkmDpSA1ut12kMZPGKirEoqYAsxS+Kg2cXrPnGAIssVYnkAXfEOF5w+gkoLuWIVSSDJK56QxgJR8yj5RFq1VTlQ6fu6ycU4bb209iO/393He1l07g0sVRTZFV1aLL5kL0Wa4Rxejanh47j6YIi6NVU1Zlk/6mVqoTyPLW4ItxSoq3b1mHEynRzEW6PE0yj5bF0TaoFc1cWU+/ScuiLetJOH54d+f5HV9W5uC+qyvRSwMrufISj2mmkBhbzxtS+FaItIRBfZLpzrAXFlx9IBWjzKox3xxjBM/BFylgJS3/hQX3e3pQ6sl64o0f3F+X79zxZaWK0KNdEWWlUKoqpqT2XTamQ6yYFeN6hm4p1WJVsXRYAQtl6ZJ6wFySIqgHcEkNXV33XlioKaRoxtAb0MwlkrkDmddVoRpkZkZhhqCuB3OAcksQJDHjqRHwKCFrJZJFC/Hv5eVIVm6Oeq/bMgaVftYr6WExrl07aXQaJ967YfI88hZuygRGbLCpTX7CI8suZ5HO7NDM9SCYkzm2Yk8+YMho63D3dnbLevIf7t2NG5GsB+f9PVxSYmZ6xjhd/JEna3uVuvJlPfg8OtWpgOUbdmVu+riXLevN7I24rPwinBy77zh91otjkiHrlHwLLB/7dnpQuv1m9uqNhKwh36GZnIZqyswiPCzjDXkQTQ1/XmFa1vbW0hy0q5issy3CcAYZ4pZKpGFNwZfcR3KdkbW6ePVqQtadv874E2GaJFeittU2yZhLdc74U86HxHRnA970eLKWfVnPz7ovcWGCo5g9L2+9K5bCd8pTz7ubgayFlblj+NeUhKznZ/8kbItFmIoJLfpdFxjnm4Op7919frzmdfArs2vwzxZE1o2oDJ+fdRECbfr1Fq2qKN63qKTWl+KK42Zoy1pag9diKVnnchluSwwnjpqlZ3w3Zmo5vDZz6fLa40jWbFSH5/U95XZFEmTLtGRBcb6cZgW8vLb221v6zvUYWAwa1/Lyf8/vQ+12zXFqvYv+P6/Jabfb84SnT+eT4L9mIgiCIAiCIAiCIAiCIAiCIAiCIAiCIAiCIAiCIAiCIAiCIAiCIAiCIAiCIAiCIAiCIAjyJfA/DtMfa8d0Zo4AAAAASUVORK5CYII=',
    name: 'Company 20',
    email: 'company20@example.com',
  ),

  // Add more companies as needed
];
