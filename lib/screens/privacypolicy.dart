import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:update_greenfin/screens/notificationsettingscreen.dart';

class privacypolicy extends StatefulWidget {
  const privacypolicy({super.key});

  @override
  State<privacypolicy> createState() => _privacypolicyState();
}

class _privacypolicyState extends State<privacypolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        title: Text("Privacy Policy",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (e)=>notificationsettingscreen()));
          }, icon: Icon(Icons.notifications_active_outlined))
        ],
      ),
      body: Center(
        child:Text("Est fugiat assumenda aut reprehenderitLorem ipsum dolor sit amet. Et odio officia aut voluptate internos est omnis vitae ut architecto sunt non tenetur fuga ut provident vero. Quo aspernatur facere et consectetur ipsum et facere corrupti est asperiores facere. Est fugiat assumenda aut reprehenderit voluptatem sed.Ea voluptates omnis aut sequi sequi.Est dolore quae in aliquid ducimus et autem repellendus.Aut ipsum Quis qui porro quasi aut minus placeat!Sit consequatur neque ab vitae facere.Aut quidem accusantium nam alias autem eum officiis placeat et omnis autem id officiis perspiciatis qui corrupti officia eum aliquam provident. Eum voluptas error et optio dolorum cum molestiae nobis et odit molestiae quo magnam impedit sed fugiat nihil non nihil vitae.Aut fuga sequi eum voluptatibus provident.Eos consequuntur voluptas vel amet eaque aut dignissimos velit.Vel exercitationem quam vel eligendi rerum At harum obcaecati et nostrum beatae? Ea accusantium dolores qui rerum aliquam est perferendis mollitia et ipsum ipsa qui enim autem At corporis sunt. Aut odit quisquam est reprehenderit itaque aut accusantium dolor qui neque repellat."),
      ),
    );
  }
}
