import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../utils/global.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  String? marrid;
  String? Status;
  XFile? image;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_outlined),
          onPressed: () {
            Get.back();
          },
          color: Colors.white,
        ),
        backgroundColor: Colors.blue.withOpacity(.8),
        title: Text(
          "Add Detail",
          style: Global.poppins18,
        ),
      ),
      body: Form(
        // autovalidateMode: AutovalidateMode.onUserInteraction,
        key: formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 70,
                    foregroundImage: FileImage(
                      File(
                        "${image?.path}",
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () async {
                        image = await Global.picker.pickImage(
                          source: ImageSource.camera,
                        );
                        setState(() {
                          Global.imagePath = image!.path;
                        });
                      },
                      icon: Icon(
                        Icons.camera_alt,
                        size: 25,
                      ),
                    ),
                    IconButton(
                      onPressed: () async {
                        image = await Global.picker.pickImage(
                          source: ImageSource.gallery,
                        );
                        setState(() {
                          Global.imagePath = image!.path;
                        });
                      },
                      icon: Icon(
                        Icons.panorama,
                        size: 25,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Icon(
                        Icons.person,
                        size: 35,
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: TextFormField(
                        onFieldSubmitted: (val) {
                          setState(() {
                            Global.namec.text = val;
                          });
                        },
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Plese Enter Name";
                          }
                        },
                        controller: Global.namec,
                        onChanged: (val) {
                          setState(() {
                            Global.name = val;
                          });
                        },
                        decoration: InputDecoration(
                          hintText: "Name",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Icon(
                        Icons.email,
                        size: 35,
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: TextFormField(
                        onFieldSubmitted: (val) {
                          setState(() {
                            Global.emailc.text = val;
                          });
                        },
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Plese Enter Email";
                          }
                        },
                        controller: Global.emailc,
                        onChanged: (val) {
                          setState(() {
                            Global.email = val;
                          });
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: "Email",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Icon(
                        Icons.phone_android,
                        size: 35,
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: TextFormField(
                        onFieldSubmitted: (val) {
                          setState(() {
                            Global.numberc.text = val;
                          });
                        },
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Plese Enter Number";
                          }
                        },
                        controller: Global.numberc,
                        onChanged: (val) {
                          setState(() {
                            Global.number = val;
                          });
                        },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "Phone",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Icon(
                        Icons.location_on,
                        size: 35,
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: TextFormField(
                        onFieldSubmitted: (val) {
                          setState(() {
                            Global.address1c.text = val;
                          });
                        },
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Plese Enter Address";
                          }
                        },
                        controller: Global.address1c,
                        onChanged: (val) {
                          setState(() {
                            Global.address1 = val;
                          });
                        },
                        decoration: InputDecoration(
                          hintText: "Address(Street,building)",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(),
                    ),
                    Expanded(
                      flex: 4,
                      child: TextFormField(
                        onFieldSubmitted: (val) {
                          setState(() {
                            Global.address2c.text = val;
                          });
                        },
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Plese Enter Address1";
                          }
                        },
                        controller: Global.address2c,
                        onChanged: (val) {
                          setState(() {
                            Global.address2 = val;
                          });
                        },
                        decoration: InputDecoration(
                          hintText: "Address2",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(),
                    ),
                    Expanded(
                      flex: 4,
                      child: TextFormField(
                        onFieldSubmitted: (val) {
                          setState(() {
                            Global.address3c.text = val;
                          });
                        },
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Plese Enter Address";
                          }
                        },
                        controller: Global.address3c,
                        onChanged: (val) {
                          setState(() {
                            Global.address3 = val;
                          });
                        },
                        decoration: InputDecoration(
                          hintText: "Address3",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Career Objectiv",
                  style: Global.poppins14blue,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  onFieldSubmitted: (val) {
                    setState(() {
                      Global.careerc.text = val;
                    });
                  },
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Plese Enter Descripation";
                    }
                  },
                  controller: Global.careerc,
                  onChanged: (val) {
                    setState(() {
                      Global.career = val;
                    });
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    hintText: "Descripation",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Current Designation (Experienced Candidate)",
                  style: Global.poppins14blue,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  onFieldSubmitted: (val) {
                    setState(() {
                      Global.currentdesc.text = val;
                    });
                  },
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Plese Enter Descripation";
                    }
                  },
                  controller: Global.currentdesc,
                  onChanged: (val) {
                    setState(() {
                      Global.currentdes = val;
                    });
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.grey,
                    )),
                    hintText: "Software Engineer",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                const Text(
                  "🎯",
                  style: TextStyle(fontSize: 60),
                ),
                TextFormField(
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Plese Enter Number";
                    }
                  },
                  onSaved: (val) {
                    Global.dis = val!;
                  },
                  decoration: const InputDecoration(
                      hintText: "Descripation", border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Date",
                  style: Global.poppins14blue,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Plese Enter Number";
                    }
                  },
                  keyboardType: TextInputType.datetime,
                  onSaved: (val) {
                    Global.date = val!;
                  },
                  decoration: InputDecoration(
                    hintText: "DD/MM/YYYY",
                    helperStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Place(Interview\nVenue/city)",
                  style: Global.poppins14blue,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Plese Enter Number";
                    }
                  },
                  onSaved: (val) {
                    Global.city = val!;
                  },
                  decoration: const InputDecoration(
                      hintText: "Eg.Surat", border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Course/Degree",
                  style: Global.poppins14blue,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  onFieldSubmitted: (val) {
                    setState(() {
                      Global.coursec.text = val;
                    });
                  },
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Plese Enter Course or Degree";
                    }
                  },
                  controller: Global.coursec,
                  onChanged: (val) {
                    setState(() {
                      Global.course = val;
                    });
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "B. Tech information Technology",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "School/College/Institute",
                  style: Global.poppins14blue,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  onFieldSubmitted: (val) {
                    setState(() {
                      Global.schoolc.text = val;
                    });
                  },
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Plese Enter School";
                    }
                  },
                  controller: Global.schoolc,
                  onChanged: (val) {
                    setState(() {
                      Global.school = val;
                    });
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Bhagavan Mahavir University",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Result",
                  style: Global.poppins14blue,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  onFieldSubmitted: (val) {
                    setState(() {
                      Global.resultc.text = val;
                    });
                  },
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Plese Enter Result";
                    }
                  },
                  controller: Global.resultc,
                  onChanged: (val) {
                    setState(() {
                      Global.result = val;
                    });
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "70% (or) 7.0 CGPA",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Year Of Pass",
                  style: Global.poppins14blue,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  onFieldSubmitted: (val) {
                    setState(() {
                      Global.passc.text = val;
                    });
                  },
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Plese Enter Passing Year";
                    }
                  },
                  controller: Global.passc,
                  onChanged: (val) {
                    setState(() {
                      Global.pass = val;
                    });
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "2019",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Company Name",
                  style: Global.poppins14blue,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  onFieldSubmitted: (val) {
                    setState(() {
                      Global.compnyc.text = val;
                    });
                  },
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Please Enter Course or Degree";
                    }
                  },
                  controller: Global.compnyc,
                  onChanged: (val) {
                    setState(() {
                      Global.compny = val;
                    });
                  },
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: "New Enterprise, San Francisco",
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "School/College/Institute",
                  style: Global.poppins14blue,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  onFieldSubmitted: (val) {
                    setState(() {
                      Global.schoolec.text = val;
                    });
                  },
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Please Enter School";
                    }
                  },
                  controller: Global.schoolec,
                  onChanged: (val) {
                    setState(() {
                      Global.schoole = val;
                    });
                  },
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: " Quality Test Engineer ",
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Roles (optional)",
                  style: Global.poppins14blue,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  onFieldSubmitted: (val) {
                    setState(() {
                      Global.roles1c.text = val;
                    });
                  },
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Please Enter Result";
                    }
                  },
                  controller: Global.roles1c,
                  onChanged: (val) {
                    setState(() {
                      Global.roles1 = val;
                    });
                  },
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText:
                        "Working with team members to come up with new concepts and product analysis...",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Employed Status",
                  style: Global.poppins14blue,
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Radio(
                            activeColor: Global.bgColor,
                            value: "Employed",
                            groupValue: Status,
                            onChanged: (val) {
                              setState(() {
                                Status = val;
                              });
                            }),
                        Text(
                          "Previously Employed",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Radio(
                            activeColor: Global.bgColor,
                            value: "Status",
                            groupValue: Status,
                            onChanged: (val) {
                              setState(() {
                                Status = val;
                              });
                            }),
                        Text(
                          "Currently Employed",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "DOB",
                  style: Global.poppins14blue,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  onFieldSubmitted: (val) {
                    setState(() {
                      Global.dobc.text = val;
                    });
                  },
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "DD/MM/YYYY";
                    }
                  },
                  controller: Global.dobc,
                  onChanged: (val) {
                    setState(() {
                      Global.dob = val;
                    });
                  },
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.grey,
                    )),
                    hintText: "DD/MM/YYYY",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Marital Status",
                  style: Global.poppins14blue,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Radio(
                        activeColor: Global.bgColor,
                        value: "Single",
                        groupValue: marrid,
                        onChanged: (val) {
                          setState(() {
                            marrid = val;
                          });
                        }),
                    Text(
                      "Singal",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Radio(
                        activeColor: Global.bgColor,
                        value: "Married",
                        groupValue: marrid,
                        onChanged: (val) {
                          setState(() {
                            marrid = val;
                          });
                        }),
                    Text(
                      "Married",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                Text(
                  "Languages Known",
                  style: Global.poppins14blue,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Checkbox(
                        activeColor: Global.bgColor,
                        value: Global.english,
                        onChanged: (val) {
                          setState(() {
                            Global.english = val!;
                          });
                        }),
                    Text(
                      "English",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Checkbox(
                        activeColor: Global.bgColor,
                        value: Global.hindi,
                        onChanged: (val) {
                          setState(() {
                            Global.hindi = val!;
                          });
                        }),
                    Text(
                      "Hindi",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Checkbox(
                        activeColor: Global.bgColor,
                        value: Global.gujarati,
                        onChanged: (val) {
                          setState(() {
                            Global.gujarati = val!;
                          });
                        }),
                    Text(
                      "Gujarati",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Nationality",
                  style: Global.poppins14blue,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  onFieldSubmitted: (val) {
                    setState(() {
                      Global.nationalityc.text = val;
                    });
                  },
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Plese Enter Passing Year";
                    }
                  },
                  controller: Global.nationalityc,
                  onChanged: (val) {
                    setState(() {
                      Global.nationality = val;
                    });
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Indian",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Project Title",
                  style: Global.poppins14blue,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  onFieldSubmitted: (val) {
                    setState(() {
                      Global.p_titlec.text = val;
                    });
                  },
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Enter title";
                    }
                  },
                  controller: Global.p_titlec,
                  onChanged: (val) {
                    setState(() {
                      Global.p_title = val;
                    });
                  },
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.grey,
                    )),
                    hintText: "Resume Builder App",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Technologies",
                  style: Global.poppins14blue,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Checkbox(
                        activeColor: Global.bgColor,
                        value: Global.c_program,
                        onChanged: (val) {
                          setState(() {
                            Global.c_program = val!;
                          });
                        }),
                    Text(
                      "C Programming",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Checkbox(
                        activeColor: Global.bgColor,
                        value: Global.c_plus,
                        onChanged: (val) {
                          setState(() {
                            Global.c_plus = val!;
                          });
                        }),
                    Text(
                      "C ++",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Checkbox(
                        activeColor: Global.bgColor,
                        value: Global.flutter,
                        onChanged: (val) {
                          setState(() {
                            Global.flutter = val!;
                          });
                        }),
                    Text(
                      "Flutter",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Roles",
                  style: Global.poppins14blue,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  onFieldSubmitted: (val) {
                    setState(() {
                      Global.rolesc.text = val;
                    });
                  },
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Enter title";
                    }
                  },
                  controller: Global.rolesc,
                  onChanged: (val) {
                    setState(() {
                      Global.roles = val;
                    });
                  },
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.grey,
                    )),
                    hintText: "Orrganize team members, Code \nanalysis",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Technologies",
                  style: Global.poppins14blue,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  onFieldSubmitted: (val) {
                    setState(() {
                      Global.technologic.text = val;
                    });
                  },
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Plese Enter Passing Year";
                    }
                  },
                  controller: Global.technologic,
                  onChanged: (val) {
                    setState(() {
                      Global.technologi = val;
                    });
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "5 - Programmers",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Project Descripation",
                  style: Global.poppins14blue,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  onFieldSubmitted: (val) {
                    setState(() {
                      Global.p_descriptionc.text = val;
                    });
                  },
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Plese Enter Passing Year";
                    }
                  },
                  controller: Global.p_descriptionc,
                  onChanged: (val) {
                    setState(() {
                      Global.p_description = val;
                    });
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter your Project Descripation",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Reference Name",
                  style: Global.poppins14blue,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  onFieldSubmitted: (val) {
                    setState(() {
                      Global.r_namec.text = val;
                    });
                  },
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Plese Enter Reference";
                    }
                  },
                  controller: Global.r_namec,
                  onChanged: (val) {
                    setState(() {
                      Global.r_name = val;
                    });
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Suresh Shah",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Designation",
                  style: Global.poppins14blue,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  onFieldSubmitted: (val) {
                    setState(() {
                      Global.designationc.text = val;
                    });
                  },
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Plese Enter Designation";
                    }
                  },
                  controller: Global.designationc,
                  onChanged: (val) {
                    setState(() {
                      Global.designation = val;
                    });
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Marketing Manager,ID-342332",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Organization/Institute",
                  style: Global.poppins14blue,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  onFieldSubmitted: (val) {
                    setState(() {
                      Global.institutec.text = val;
                    });
                  },
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Plese Enter Institute";
                    }
                  },
                  controller: Global.institutec,
                  onChanged: (val) {
                    setState(() {
                      Global.institute = val;
                    });
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Green Energy Pvt. Ltd.",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Saved Successfully..."),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Colors.red,
                          content: Text("Plese Enter Full Detail..."),
                        ),
                      );
                    }
                    ;
                  },
                  child: Center(
                    child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "SAVE",
                        style: Global.poppins14,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed("/pdf");
                  },
                  child: Center(
                    child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "SAVE",
                        style: Global.poppins14,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
