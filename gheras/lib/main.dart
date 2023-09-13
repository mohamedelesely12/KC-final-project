import 'package:flutter/material.dart';
import 'package:gheras/pages/plants.dart';
import 'package:gheras/pages/details.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  var plants = [
    Plants(
        name: 'العرفج',
        imgUrl:
            'https://th.bing.com/th/id/R.702ceb9ba3b33520f5b042a7341da657?rik=hB8megZPmwdxhw&pid=ImgRaw&r=0&sres=1&sresct=1',
        description:
            'نبات العرفج من النباتات التي استخدمها العرب القدماء، الذين كانوا يقطنون في البوادي، والصحراء، كثيراً، وهو معروف بفوائده واستخداماته المتعددة، وقد ورد ذكره في الكثير من قصائد الشعراء، والأمثال العربية القديمة، باعتباره جزءاً مهماً من الغطاء النباتي، وفي الوقت الحاضر، تتم زراعته ضمن محميات طبيعية، للحفاظ عليه، ومنع ندرته.'),
    Plants(
        name: 'النخيل',
        imgUrl:
            'https://th.bing.com/th/id/OIP.Bxw_iC9k6tU0Dq8BCVvzAgHaJ4?pid=ImgDet&rs=1',
        description:
            'يعد نبات نخيل التمر من النباتات كاسيات البذور ذات الفلقة الواحدة، وتنتمي هذه النباتات إلى عائلة النخيليات (Arecaceae)، ويعد كل من جنوب غرب آسيا وشمال إفريقيا هما الموطن الأصلي لنخيل التمر، كما يتم زراعتها بكثرة في أستراليا والمكسيك وأمريكا الجنوبية وجنوب إفريقيا والولايات المتحدة[٥]، ويتراوح ارتفاع نخيل التمر ما بين 30 إلى 36 متر، ومن الجدير بالذكر أنه يمكن زراعة نخيل التمر في المنازل داخل وعاء، إلا أن عملية الزراعة في الوعاء تحد من حجم ومعدل نمو نخيل التمر'),
    Plants(
        name: 'الصبار',
        imgUrl:
            'https://th.bing.com/th/id/R.5f0194bdf0973e61f93952d4e2ca9a7d?rik=eMeRxStgTtPLTw&riu=http%3a%2f%2fwww.rjeem.com%2fwp-content%2fuploads%2f2015%2f12%2f0000000000000000064.jpg&ehk=sf13iXwvwFu3jw6%2f8dcCD5lIpjpJ0kFyoyEV%2b5gEnsc%3d&risl=&pid=ImgRaw&r=0',
        description:
            'يتميز صبار البرميل (Ferocactus hamatacanthus) بمظهره الأسطواني واحتوائه على أشواك طويلة وزهور صفراء ضخمة تنمو على الجزء العلوي من الساق، ويعد الموطن الأصلي لهذه النباتات كلًا من؛ جنوب شرق نيو مكسيكو، جنوب غرب تكساس وشمال المكسيك، وينتمي هذا النوع إلى عائلة الصبار ، كما يعرف صبار البرميل بطوله الذي يمكن أن يصل إلى 3 أمتار، ومن الجدير بالذكر أنه يمكن زراعة صبار البرميل في أوعية داخل المنازل مع بعض العناية، كما يفضل استخدام أوعية مخصصة تسمح بتبخر الماء الزائد عند زراعة صبار البرميل.'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
            child: ListView.builder(
                itemCount: plants.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Image.network(plants[index].imgUrl),
                    title: Text(plants[index].name),
                    subtitle: Text(plants[index].name),
                    trailing: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      DetailsPage(ali: plants[index])));
                        },
                        icon: Icon(Icons.circle_rounded)),
                  );
                })),
      ),
    );
  }
}
