module.exports = {
  insertBooksErrorHandling: (data, response) => {
    if (!data.title) {
      res.json({
        message: 'Title is required'
      });
    }
    if (!data.author) {
      res.json({
        message: 'Author is required'
      });
    }
    if (!data.genre) {
      res.json({
        message: 'Genre is required'
      });
    }
    if (!data.status) {
      res.json({
        message: 'Status is required'
      });
    }
    if (!data.filename) {
      res.json({
        message: 'Image is required'
      });
    }
    if (!data.description) {
      res.json({
        message: 'Description is required'
      });
    }
  },
  insertGenreErrorHandling: (data, response) => {
    if (!data.name) {
      res.json({
        Message: 'Genre is required'
      });
    }
  }
};
