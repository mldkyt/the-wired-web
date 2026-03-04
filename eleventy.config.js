

export default async function(eleventyConfig) {
	// Configure Eleventy

    eleventyConfig.addPassthroughCopy("bundle.css");
    eleventyConfig.addPassthroughCopy("img/");
};

