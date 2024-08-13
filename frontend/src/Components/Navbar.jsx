import React, { useState } from "react";
import { Link as ScrollLink } from "react-scroll";
import "@fortawesome/fontawesome-free/css/all.min.css";
import Logo from "../assets/images/logo.png";

const Navbar = () => {
  const [isOpen, setIsOpen] = useState(false);

  return (
    <nav className="bg-[#F7DBA7] shadow-lg font-poppins fixed top-0 w-full z-50">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="flex justify-between items-center h-20">
          {/* Logo Section */}
          <div className="flex items-center">
            <a href="/" className="flex items-center py-2 px-2">
              <img src={Logo} alt="Logo" className="h-16 w-15" />
            </a>
          </div>

          {/* Nav Links */}
          <div className="hidden md:flex space-x-10 font-sans">
            <ScrollLink
              to="hero"
              smooth={true}
              duration={500}
              className="py-4 px-2 text-black font-medium hover:text-[#ED9455] transition duration-300 cursor-pointer"
            >
              Beranda
            </ScrollLink>
            <ScrollLink
              to="rekomendasi-dokter"
              smooth={true}
              duration={500}
              className="py-4 px-2 text-black font-medium hover:text-[#ED9455] transition duration-300 cursor-pointer"
            >
              Cari Dokter
            </ScrollLink>
            <ScrollLink
              to="adopsi"
              smooth={true}
              duration={500}
              className="py-4 px-2 text-black font-medium hover:text-[#ED9455] transition duration-300 cursor-pointer"
            >
              Adopsi
            </ScrollLink>
            <a
              href="/Tentang-kami"
              className="py-4 px-2 text-black font-medium hover:text-[#ED9455] transition duration-300"
            >
              Tentang Kami
            </a>
          </div>

          {/* Search and Auth Buttons */}
          <div className="hidden md:flex items-center space-x-3 font-sans">
            <div className="relative">
              <input
                type="text"
                placeholder="Search..."
                className="px-5 py-1 pl-10 border rounded-full focus:border-[#DE9455]"
              />
              <span className="absolute inset-y-0 left-0 pl-3 flex items-center">
                <i className="fas fa-search text-gray-500"></i>
              </span>
            </div>
            <a
              href="/Daftar-PetPalsCare"
              className="py-2 px-4 bg-[#F7DBA7] border border-[#ED9455] text-[#ED9455] rounded-full hover:bg-[#ED9455] hover:text-white transition duration-300"
            >
              Daftar
            </a>
            <a
              href="/Login-PetPalsCare"
              className="py-2 px-4 bg-[#ED9455] text-white rounded-full hover:bg-[#f89b59] transition duration-300"
            >
              Masuk
            </a>
          </div>

          {/* Mobile menu button */}
          <div className="md:hidden flex items-center">
            <button className="outline-none" onClick={() => setIsOpen(!isOpen)}>
              <svg
                className="w-6 h-6 text-gray-500 hover:text-blue-500"
                fill="none"
                strokeLinecap="round"
                strokeLinejoin="round"
                strokeWidth="2"
                viewBox="0 0 24 24"
                stroke="currentColor"
              >
                <path d="M4 6h16M4 12h16M4 18h16"></path>
              </svg>
            </button>
          </div>
        </div>
      </div>

      {/* Mobile menu */}
      <div className={`md:hidden ${isOpen ? "block" : "hidden"} pb-4`}>
        <ScrollLink
          to="hero"
          smooth={true}
          duration={500}
          className="block py-2 px-4 text-sm hover:bg-gray-200 cursor-pointer"
          onClick={() => setIsOpen(false)}
        >
          Beranda
        </ScrollLink>
        <ScrollLink
          to="rekomendasi-dokter"
          smooth={true}
          duration={500}
          className="block py-2 px-4 text-sm hover:bg-gray-200 cursor-pointer"
          onClick={() => setIsOpen(false)}
        >
          Cari Dokter
        </ScrollLink>
        <ScrollLink
          to="adopsi"
          smooth={true}
          duration={500}
          className="block py-2 px-4 text-sm hover:bg-gray-200 cursor-pointer"
          onClick={() => setIsOpen(false)}
        >
          Adopsi
        </ScrollLink>
        <a
          href="/Tentang-kami"
          className="block py-2 px-4 text-sm hover:bg-gray-200"
          onClick={() => setIsOpen(false)}
        >
          Tentang Kami
        </a>
        <div className="px-4 py-2">
          <div className="relative">
            <input
              type="text"
              placeholder="Search..."
              className="w-full px-2 py-1 pl-10 border rounded-md focus:border-[#DE9455]"
            />
            <span className="absolute inset-y-0 left-0 pl-3 flex items-center">
              <i className="fas fa-search text-gray-500"></i>
            </span>
          </div>
        </div>
        <a
          href="/Daftar-PetPalsCare"
          className="block py-2 px-4 bg-[#F7DBA7] text-[#DE9455] border border-[#DE9455] rounded-full mx-4 my-2 hover:bg-[#DE9455] hover:text-white transition duration-300"
          onClick={() => setIsOpen(false)}
        >
          Daftar
        </a>
        <a
          href="/Login-PetPalsCare"
          className="block py-2 px-4 bg-[#DE9455] text-white rounded-full mx-4 my-2 hover:bg-[#D68B4B] transition duration-300"
          onClick={() => setIsOpen(false)}
        >
          Masuk
        </a>
      </div>
    </nav>
  );
};

export default Navbar;
