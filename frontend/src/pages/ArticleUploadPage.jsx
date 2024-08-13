import React, { useState } from 'react';
import { useNavigate } from 'react-router-dom';
import Navbar from '../Components/Navbar-after';
import Footer from '../Components/Footer-after';

const ArticleUploadPage = () => {
  const [title, setTitle] = useState('');
  const [summary, setSummary] = useState('');
  const [content, setContent] = useState('');
  const [imageUrl, setImageUrl] = useState('');
  const navigate = useNavigate();

  return (
    <>
      <Navbar />
      <div className="container mx-auto px-4 py-8">
        <h1 className="text-3xl font-bold mb-8 text-center">Upload Article</h1>
        <form className="max-w-3xl mx-auto bg-white p-8 rounded-lg shadow-md">
          <div className="mb-6">
            <label htmlFor="title" className="block text-gray-700 font-semibold mb-2">
              Title
            </label>
            <input
              type="text"
              id="title"
              value={title}
              onChange={(e) => setTitle(e.target.value)}
              className="w-full p-3 border border-gray-300 rounded-lg"
              required
            />
          </div>
          <div className="mb-6">
            <label htmlFor="summary" className="block text-gray-700 font-semibold mb-2">
              Summary
            </label>
            <textarea
              id="summary"
              value={summary}
              onChange={(e) => setSummary(e.target.value)}
              className="w-full p-3 border border-gray-300 rounded-lg"
              rows="3"
              required
            />
          </div>
          <div className="mb-6">
            <label htmlFor="content" className="block text-gray-700 font-semibold mb-2">
              Content
            </label>
            <textarea
              id="content"
              value={content}
              onChange={(e) => setContent(e.target.value)}
              className="w-full p-3 border border-gray-300 rounded-lg"
              rows="10"
              required
            />
          </div>
          <div className="mb-6">
            <label htmlFor="imageUrl" className="block text-gray-700 font-semibold mb-2">
              Image URL
            </label>
            <input
              type="text"
              id="imageUrl"
              value={imageUrl}
              onChange={(e) => setImageUrl(e.target.value)}
              className="w-full p-3 border border-gray-300 rounded-lg"
            />
          </div>
          <button
            type="submit"
            className="w-full bg-blue-500 text-white py-3 rounded-lg hover:bg-blue-600 transition duration-300"
          >
            Upload Article
          </button>
        </form>
      </div>
      <Footer />
    </>
  );
};

export default ArticleUploadPage;
