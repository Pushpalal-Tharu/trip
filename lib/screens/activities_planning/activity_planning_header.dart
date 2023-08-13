import 'package:flutter/material.dart';

class MainHeaderSection extends StatelessWidget {
  const MainHeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xFFDBDFAA),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                    // color: Colors.red,
                    borderRadius: BorderRadius.circular(6),
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/game-icons_journey.png",
                      ),
                      fit: BoxFit.cover,
                    )),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Container(
                width: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Trekking Through the wilderness",
                      style: TextStyle(
                        color: const Color(0xFF222034),
                        overflow: TextOverflow.ellipsis,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Kathmandu to Annapurna Base Camp",
                      style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Your trip starting at.......",
                      style: TextStyle(
                        color: const Color(0xFF222034),
                        overflow: TextOverflow.ellipsis,
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    left: 0,
                    top: 24,
                  ),
                  width: 34,
                  height: 34,
                  decoration: const ShapeDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://s3-alpha-sig.figma.com/img/b62e/281e/ab8ec36db068c12db62b3e66e68a6d98?Expires=1692576000&Signature=YDtQQXf3d8wEup-ZH5jkNbsKFmj2OuQC3OXB6iKjHPE3XJSlWLaPjeieoLlqGDLN294jKqezQPJWCQW1nueVPYD3yPA4dcfp2~hrww2qUa-4lf4Ls4X~fi2LccHoLorzK1port1V7dPO0O-godsmf6Ulo46ktrzvwP6Z7nQ5XBijLjlOajSiEVnTU10LhJptZxzPEQY~mcemyWuzZNwGYJoJzHRsYM06JlFDHsY6axn-mCrWTupJHrzWs2QGyKtBImyQfDP69W4HlelbU8coCWsZ9iRr0Ty13J6shvk4~dkfedJeNibVgMMHW-em6nqcvbEGL0o8-odqrgJvdpBPqg__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                      fit: BoxFit.fill,
                    ),
                    shape: OvalBorder(
                      side: BorderSide(width: 0.25, color: Color(0xFF007AFF)),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    left: 7,
                    top: 24,
                  ),
                  width: 34,
                  height: 34,
                  decoration: const ShapeDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://s3-alpha-sig.figma.com/img/13a2/0041/20712ec863294cb7e2dd1eac8ecb2bdd?Expires=1692576000&Signature=Y7570rid4UtqhrkTj4Ttaa69cR1cyjMl7R2tEgcyu6XGYQWtlnDpFGpgqWydFj09QbkF~KJREFoRpOM6nHlmvxXAfX-XQq7T6cexfdHNpgewEsW3Yav5-Tqyqp0zYWTQvV35RvKslvnNzFih6vJ5ZmpUg0D6DRnY8CvzLpUzVi81RP3gxwD3TxG6bNIzpyBQ5hrqL3pFI0XdxJBW6Cg6rdCOcLWBef83yukKAJvBWlFN4k8jZ7GTazAcquxMBHKnP2Uia0eboVDJHPVyEquDHmTPonU2wq8lmtgNq7TgTX20FbK1YxIUZSvl7tIVeBqcK3M8-wisrO3I-uyL26YKxA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                      fit: BoxFit.fill,
                    ),
                    shape: OvalBorder(
                      side: BorderSide(width: 0.25, color: Color(0xFF007AFF)),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 14, top: 24),
                  width: 34,
                  height: 34,
                  decoration: const ShapeDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://s3-alpha-sig.figma.com/img/4bf4/8b34/f8274f646d6c1852ccfc3dfc6e985033?Expires=1692576000&Signature=FLIAENyerUr5wXLucHVuSEZBi42JtqMqgxbBvnvj6TDRTMd6KbPR0qzT10KAAOIo~E43U4WMgZdA2KdIk41qFmr-H1oPIvJldXa89k6dkRakdZEr4YI7wvpEwYkC-14-wp2tF9Obl2hbAOS9zCEheEG7UnCYjUmndtUUrVqJaaS132Whu8RE5YybS2K7T4sIGyHBDpWSOjQgDcSKbOxHov-pUdXBX0XKyajY8xoW~nLY2IDke~i1aH34r~3W51eifWFDFnghwFBGG3iJ5kw-haKD4haSUfSk7pBkxf94I-E3m1wkCAFiGS6lV9Igrh50DbukQn27xQ7aBNGnj8tFgA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                      fit: BoxFit.fill,
                    ),
                    shape: OvalBorder(
                      side: BorderSide(width: 0.25, color: Color(0xFF007AFF)),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: 24,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color(0xFF222034)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 4,
                          bottom: 4,
                          left: 8,
                          right: 8,
                        ),
                        child: Text(
                          "14+",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 24,
                      ),
                      width: 34,
                      height: 34,
                      decoration: const ShapeDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://s3-alpha-sig.figma.com/img/13ae/06cf/e5c9929e6031e903f18184e6acb736e6?Expires=1692576000&Signature=AekhWX4yRwWRtWlK4XUapjiA14v5E9lB226l2-1Pnmgj9i-UU2NhH0of1F1qYYxctPiBpxJ-k91oWdEmFsixObIhVan9fKtFt6sjsx4wzENvQdzLiSi0tDcNufFekHYbxZ343UfrJxAEQynLT8wWFf77JiSRlrR8z0IYizV9pjjoEVytQ1iaUWqOfc25IGu65nxzDKyf81pl9JT4gNvuRFos7MOXhFLi~5Dk1dysA9kFd3LG5xmndt7cuaLqNbWUVyif-8oAECHYfherpEvJdRLzazsUs6d3LAU865kdykGjjTyUx51oSUuAqsQ9nhcUc25ZQYVus2l4fpD~yRtwFw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                          fit: BoxFit.fill,
                        ),
                        shape: OvalBorder(),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
