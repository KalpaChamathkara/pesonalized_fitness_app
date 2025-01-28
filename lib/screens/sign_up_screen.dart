import 'package:flutter/material.dart';
import 'package:pesonalized_fitness_app/screens/sing_in_screen.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();

  // Controllers for input fields
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  String _selectedGender = 'Male';

  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            // Main content with scrolling
            SingleChildScrollView(
              padding: const EdgeInsets.only(top: 180, left: 20, right: 20),
              // Adjust top padding to fit sticky header
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 20),

                    // Name Field
                    _buildTextField(
                      controller: _nameController,
                      label: 'Name',
                      icon: Icons.person_outline,
                      textStyle: const TextStyle(
                        fontFamily: 'Poppins',
                        // Specify the Poppins font family
                        fontWeight: FontWeight
                            .w400, // Apply desired font weight (e.g., 600 for semi-bold)
                      ),
                    ),
                    const SizedBox(height: 15),

                    // Email Field
                    _buildTextField(
                      controller: _emailController,
                      label: 'Email',
                      icon: Icons.email_outlined,
                      keyboardType: TextInputType.emailAddress,
                      textStyle: const TextStyle(
                        fontFamily: 'Poppins',
                        // Specify the Poppins font family
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 15),

                    //Gender Dropdown
                    _buildDropdownField(),
                    const SizedBox(height: 15),

                    // DOB Field
                    _buildDateField(),
                    const SizedBox(height: 15),

                    // Password Field
                    _buildTextField(
                      controller: _passwordController,
                      label: 'Password',
                      icon: Icons.lock_outline,
                      textStyle: const TextStyle(
                        fontFamily: 'Poppins',
                        // Specify the Poppins font family
                        fontWeight: FontWeight
                            .w400, // Apply desired font weight (e.g., 600 for semi-bold)
                      ),
                      obscureText: _obscurePassword,
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscurePassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscurePassword = !_obscurePassword;
                          });
                        },
                      ),
                    ),
                    const SizedBox(height: 15),

                    // Confirm Password Field
                    _buildTextField(
                      controller: _confirmPasswordController,
                      label: 'Confirm Password',
                      icon: Icons.lock_outline,
                      textStyle: const TextStyle(
                        fontFamily: 'Poppins',
                        // Specify the Poppins font family
                        fontWeight: FontWeight
                            .w400, // Apply desired font weight (e.g., 600 for semi-bold)
                      ),
                      obscureText: _obscureConfirmPassword,
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureConfirmPassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureConfirmPassword = !_obscureConfirmPassword;
                          });
                        },
                      ),
                    ),
                    const SizedBox(height: 15),

                    // Phone Field
                    _buildTextField(
                      controller: _phoneController,
                      label: 'Phone',
                      icon: Icons.phone_outlined,
                      textStyle: const TextStyle(
                        fontFamily: 'Poppins',
                        // Specify the Poppins font family
                        fontWeight: FontWeight
                            .w400, // Apply desired font weight (e.g., 600 for semi-bold)
                      ),
                      keyboardType: TextInputType.phone,
                    ),
                    const SizedBox(height: 30),

                    // Sign Up Button
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState?.validate() ?? false) {
                          // Handle sign-up functionality here
                          {}
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 144, 142, 235),
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        'SIGN UP',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    // OR Divider
                    const Row(
                      children: [
                        Expanded(
                          child: Divider(color: Colors.grey, thickness: 1),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text('or'),
                        ),
                        Expanded(
                          child: Divider(color: Colors.grey, thickness: 1),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),

                    // Google and Facebook Buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Image.asset('assets/images/googelbtn.png'),
                          iconSize: 40.0,
                          onPressed: () {
                            // Google sign-up functionality
                          },
                        ),
                        const SizedBox(width: 20),
                        IconButton(
                          icon: Image.asset('assets/images/facebookbtn.png'),
                          iconSize: 40.0,
                          onPressed: () {
                            // Facebook sign-up functionality
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),

                    // Already have an Account? Sign In
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Don't have an Account? ",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                          OutlinedButton(
                            onPressed: () {
                              // Add navigation to Sign In screen
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignInPage()),
                              );
                            },
                            style: OutlinedButton.styleFrom(
                              backgroundColor: Colors.white,
                              side: const BorderSide(color: Colors.white),
                              // White border
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(8), // Rounded corners
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 5), // Adjust padding as needed
                            ),
                            child: const Text(
                              'Sign In',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                color: Color.fromARGB(255, 144, 142, 235),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),

            // Sticky Header
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(20),
                color: const Color.fromARGB(
                    255, 144, 142, 235), // Light blue background
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Text(
                          'Fitness',
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Image.asset(
                          'assets/images/appLogo.png',
                          width: 60,
                          height: 60,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Sign Up',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget for the standard TextField
  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required IconData icon,
    bool obscureText = false,
    Widget? suffixIcon,
    TextInputType keyboardType = TextInputType.text,
    TextStyle? textStyle, // Add this parameter
  }) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      style: textStyle, // This applies the passed textStyle
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon),
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: const Color.fromARGB(255, 236, 235, 253),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        labelStyle: textStyle, // Apply textStyle to label
        hintStyle: textStyle, // Apply textStyle to hint text
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter $label';
        }
        return null;
      },
    );
  }

  // Widget for the dropdown field
  Widget _buildDropdownField() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 236, 235, 253),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButtonFormField<String>(
        value: _selectedGender,
        decoration: const InputDecoration(
          labelText: 'Gender',
          border: InputBorder.none,
        ),
        icon: const Icon(Icons.arrow_drop_down),
        items: ['Male', 'Female']
            .map((gender) => DropdownMenuItem<String>(
                  value: gender,
                  child: Text(gender),
                ))
            .toList(),
        onChanged: (value) {
          setState(() {
            _selectedGender = value ?? 'Male';
          });
        },
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please select your gender';
          }
          return null;
        },
      ),
    );
  }

  // Widget for the date of birth field
  Widget _buildDateField() {
    return TextFormField(
      controller: _dobController,
      readOnly: true,
      style: const TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w400,
      ),
      decoration: InputDecoration(
        labelText: 'Date of Birth',
        prefixIcon: const Icon(Icons.calendar_today),
        filled: true,
        fillColor: const Color.fromARGB(255, 236, 235, 253),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
      onTap: () async {
        DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(1900),
          lastDate: DateTime.now(),
        );
        if (pickedDate != null) {
          setState(() {
            _dobController.text =
                '${pickedDate.year}-${pickedDate.month.toString().padLeft(2, '0')}-${pickedDate.day.toString().padLeft(2, '0')}';
          });
        }
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please select your date of birth';
        }
        return null;
      },
    );
  }
}
