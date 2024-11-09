import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // TODO: Deklarisi variabel
  bool isSignedIn = false;
  String fullName = ' Anggi Ayu';
  String userName = ' Giayu';
  int favoriteCandiCount = 0;

  //TODO: Fungsi Sign In
  void SignIn() {
    setState(() {
      isSignedIn = !isSignedIn;
    });
  }

  void SignOut() {
    setState(() {
      isSignedIn = !isSignedIn;
    });
  }

  //TODO: Fungsi Sign out
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.deepPurple,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                //TODO: Bagian Profile Header (isi gambar profil)
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 150,
                    ),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.deepPurple,
                                width: 2,
                              ),
                              shape: BoxShape.circle),
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage('images/placeholder_image.png'),
                          ),
                        ),
                        if (isSignedIn)
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.camera_alt,
                                color: Colors.deepPurple[50],
                              )),
                      ],
                    ),
                  ),
                ),
                //TODO: Bagian Profile Info (isi info profil)
                //Pengguna
                const SizedBox(
                  height: 20,
                ),
                Divider(
                  color: Colors.deepPurple[100],
                ),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 3,
                      child: const Row(
                        children: [
                          Icon(
                            Icons.lock,
                            color: Colors.amber,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Pengguna',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                        child: Text(
                      ': $userName',
                      style: TextStyle(fontSize: 18),
                    ))
                  ],
                ),
                //Nama Lengkap
                const SizedBox(
                  height: 4,
                ),
                Divider(
                  color: Colors.deepPurple[100],
                ),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 3,
                      child: const Row(
                        children: [
                          Icon(
                            Icons.person,
                            color: Colors.blueGrey,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Nama',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                        child: Text(
                      ': $fullName',
                      style: TextStyle(fontSize: 18),
                    )),
                    if (isSignedIn) const Icon(Icons.edit)
                  ],
                ),
                //Favorite
                const SizedBox(
                  height: 4,
                ),
                Divider(
                  color: Colors.deepPurple[100],
                ),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 3,
                      child: const Row(
                        children: [
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Nama',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                        child: Text(
                      ': $favoriteCandiCount',
                      style: TextStyle(fontSize: 18),
                    ))
                  ],
                ),
                //TODO:Action(tombol signin dan signout)
                const SizedBox(
                  height: 4,
                ),
                Divider(
                  color: Colors.deepPurple[100],
                ),
                const SizedBox(
                  height: 20,
                ),
                isSignedIn
                    ? TextButton(
                        onPressed: SignOut, child: const Text('Sign Out'))
                    : TextButton(
                        onPressed: SignIn, child: const Text('Sign in'))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
