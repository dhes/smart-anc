const fs = require('fs');

// Load the original bundle
fs.readFile('ANCDT01-bundle.json', 'utf8', (err, data) => {
  if (err) {
    console.error('Error reading the original bundle file:', err);
    return;
  }

  // Parse the original bundle
  const originalBundle = JSON.parse(data);

  // Create a delete bundle
  const deleteBundle = {
    resourceType: "Bundle",
    id: "delete-bundle",
    type: "transaction",
    entry: []
  };

  // Populate the delete bundle with DELETE requests
  originalBundle.entry.forEach(entry => {
    const resourceUrl = entry.request.url; // Extract resource URL
    deleteBundle.entry.push({
      request: {
        method: "DELETE",
        url: resourceUrl
      }
    });
  });

  // Save the delete bundle to a file
  fs.writeFile('delete_bundle.json', JSON.stringify(deleteBundle, null, 2), 'utf8', (err) => {
    if (err) {
      console.error('Error writing the delete bundle file:', err);
    } else {
      console.log('Delete bundle created as delete_bundle.json');
    }
  });
});