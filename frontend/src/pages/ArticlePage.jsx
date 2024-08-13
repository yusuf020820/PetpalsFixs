import React, { useState, useEffect } from "react";
import { useNavigate } from "react-router-dom";
import Navbar from "../Components/Navbar-after";
import Footer from "../Components/Footer-after";
import axios from "../context/axiosConfig";
// import ArticlesBanner from "../assets/images/articles.png";
import AOS from "aos";
import "aos/dist/aos.css";


const Card = ({ title, summary, imageUrl, onDetailClick }) => {
  return (
    <div
      className="max-w-xs mx-1 bg-white rounded-xl shadow-lg overflow-hidden"
      data-aos="fade-up"
    >
      <img className="w-full h-52 object-cover" src={imageUrl} alt={title} />
      <div className="px-6 py-4">
        <div className="font-bold text-xl mb-2 line-clamp-1">
          <h1>{title}</h1>
        </div>
        <p className="text-[#667479] text-sm line-clamp-2">{summary}</p>
        <button
          className="mt-4 w-full py-1 bg-[#ED9455] hover:bg-[#f89b59] text-white rounded-lg transition duration-300"
          onClick={onDetailClick}
        >
          Read More
        </button>
      </div>
    </div>
  );
};

const ArticlePage = () => {
  const [articles, setArticles] = useState([]);
  const navigate = useNavigate();

  useEffect(() => {
    window.scrollTo(0, 0);
    AOS.init({ duration: 1000 });

    const fetchArticles = async () => {
      try {
        const response = await axios.get("doctors/articles");
        setArticles(response.data);
      } catch (error) {
        console.error("Failed to fetch articles:", error);
      }
    };

    fetchArticles();
  }, []);

  const handleDetailClick = (articleId) => {
    navigate(`/article/${articleId}`);
  };

  return (
    <>
      <Navbar />
      <div className="container px-20 py-8 font-poppins">
        {/* <img
          src={ArticlesBanner}
          alt="articles"
          className="w-auto h-auto relative mb-8"
          data-aos="fade-in"
        /> */}
        <div className="absolute top-72 left-3/4 transform -translate-x-1/4 -translate-y-1/2 text-white px-12 py-4 text-left w-full max-w-full">
          <h1 className="text-4xl font-bold mb-2">Discover New Insights</h1>
          <h2 className="text-xl font-semibold">Latest Articles</h2>
          <h2 className="text-xl font-semibold mb-2">Expand Your Knowledge</h2>
          <h4 className="text-sm mb-2 max-w-md">
            Stay informed and inspired with our latest articles on various topics.
          </h4>
        </div>

        <div className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-2">
          {articles.map((item) => (
            <Card
              key={item.id}
              title={item.title}
              summary={item.summary}
              imageUrl={item.imageUrl}
              onDetailClick={() => handleDetailClick(item.id)}
            />
          ))}
        </div>
      </div>

      <Footer />
    </>
  );
};

export default ArticlePage;