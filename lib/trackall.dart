import 'dart:convert';
import 'detailsallcountry.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shimmer/shimmer.dart';

class TrackAllcountries extends StatefulWidget {
  const TrackAllcountries({Key? key}) : super(key: key);

  @override
  State<TrackAllcountries> createState() => _TrackAllcountriesState();
}

class _TrackAllcountriesState extends State<TrackAllcountries> {
  var data;
  Future<List<dynamic>> getCountry() async {
    await Future.delayed(const Duration(seconds: 3));
    final response =
        await http.get(Uri.parse('https://disease.sh/v3/covid-19/countries'));
    if (response.statusCode == 200) {
      data = jsonDecode(response.body.toString());
      return data;
    } else {
      return data;
    }
  }

  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            height: 50,
            width: 50,
            child: const Icon(Icons.arrow_back_ios,color: Colors.black,),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40.0, left: 8, right: 8),
            child: Container(
                height: 80,
                //color: Colors.pink,
                child: Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      onChanged: (value) {
                        setState(() {});
                      },
                      controller: search,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(color: Colors.purple)),
                        prefixIcon: const Icon(Icons.search),
                        hintText: 'Name of Country',
                        border: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black87)),
                      ),
                    ),
                  ),
                )),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: FutureBuilder(
              future: getCountry(),
              builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
                if (!snapshot.hasData &&
                    snapshot.connectionState == ConnectionState.waiting) {
                  return ListView.builder(
                    itemBuilder: (context, index) {
                      return Shimmer.fromColors(
                          baseColor: Colors.grey.shade100,
                          highlightColor: Colors.grey,
                          child: Column(
                            children: [
                              ListTile(
                                leading: Container(
                                    height: 50, width: 50, color: Colors.white),
                                title: Container(
                                    height: 50, width: 50, color: Colors.white),
                                subtitle: Container(
                                    height: 20, width: 50, color: Colors.white),
                              ),
                            ],
                          ));
                    },
                  );
                } else {
                  return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      String name = snapshot.data![index]['country'].toString();
                      if (search.text.isEmpty) {
                        return Column(
                          children: [
                               ListTile(
                                leading: Image(
                                  height: 50,
                                  width: 50,
                                  image: NetworkImage(snapshot.data![index]
                                          ['countryInfo']['flag']
                                      .toString()),
                                  fit: BoxFit.contain,
                                ),
                                title: Text(
                                    snapshot.data![index]['country'].toString()),
                                subtitle: Row(
                                  children: [
                                    const Text('Updated:'),
                                    const SizedBox(width: 5),
                                    Text(snapshot.data![index]['updated']
                                        .toString()),
                                  ],
                                ),
                                 onTap: () {
                                   Navigator.push(context, MaterialPageRoute(builder: (context) => Allcountrydetails(
                                     image: snapshot.data![index]['countryInfo']['flag'],
                                     active: snapshot.data![index]['active'],
                                     critical:snapshot.data![index]['critical'] ,
                                     name:snapshot.data![index]['country'] ,
                                     tests: snapshot.data![index]['tests'],
                                     todayRecover:snapshot.data![index]['recovered'] ,
                                     totalCase: snapshot.data![index]['cases'],
                                     totalDeaths: snapshot.data![index]['deaths'],
                                     totalRecover: snapshot.data![index]['recovered'],
                                     todayDeaths: snapshot.data![index]['todayDeaths'],
                                     todayRecovered: snapshot.data![index]['todayRecovered'],
                                   ),));
                                 },
                              ),

                          ],
                        );
                      } else if (name
                          .toLowerCase()
                          .contains(search.text.toLowerCase())) {
                        return Column(
                          children: [
                            InkWell(
                              child: ListTile(
                                leading: Image(
                                  height: 50,
                                  width: 50,
                                  image: NetworkImage(snapshot.data![index]
                                          ['countryInfo']['flag']
                                      .toString()),
                                  fit: BoxFit.contain,
                                ),
                                title: Text(
                                    snapshot.data![index]['country'].toString()),
                                subtitle: Row(
                                  children: [
                                    const Text('Updated:'),
                                    const SizedBox(width: 5),
                                    Text(snapshot.data![index]['updated']
                                        .toString()),
                                  ],
                                ),
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Allcountrydetails(
                                    image: snapshot.data![index]['countryInfo']['flag'],
                                    active: snapshot.data![index]['active'],
                                    critical:snapshot.data![index]['critical'] ,
                                    name:snapshot.data![index]['country'] ,
                                    tests: snapshot.data![index]['tests'],
                                    todayRecover:snapshot.data![index]['recovered'] ,
                                    totalCase: snapshot.data![index]['cases'],
                                    totalDeaths: snapshot.data![index]['deaths'],
                                    totalRecover: snapshot.data![index]['recovered'],
                                    todayDeaths: snapshot.data![index]['todayDeaths'],
                                    todayRecovered: snapshot.data![index]['todayRecovered'],
                                  ),));
                                },
                              ),
                            ),
                          ],
                        );
                      } else {
                        return Container();
                      }
                    },
                  );
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
