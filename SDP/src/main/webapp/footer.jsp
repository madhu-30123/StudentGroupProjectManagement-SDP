<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Footer</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha384-k6RqeWeci5ZR/Lv4MR0sA0FfDOMBBy0w9XE9GH8cOYxKp1p6sIezf2kGm0q" crossorigin="anonymous">
<style>
    /* Main layout fixes */
    html, body {
        height: 100%;
        margin: 0;
        display: flex;
        flex-direction: column;
    }

    .content {
        flex: 1; /* This ensures the content expands to push the footer down */
    }

    /* Footer styling */
    .footer {
        background-color: #333;
        color: white;
        padding: 40px 0;
        font-family: Arial, sans-serif;
        position: relative;
    }

    .footer-container {
        display: flex;
        justify-content: space-around;
        flex-wrap: wrap;
    }

    .footer-section {
        flex: 1;
        margin: 20px;
        min-width: 250px;
    }

    .footer-section h2 {
        color: #f39c12;
        margin-bottom: 20px;
    }

    .footer-section ul li {
        margin: 10px 0;
    }

    .footer-section ul li a {
        color: white;
        text-decoration: none;
    }

    .footer-section ul li a:hover {
        text-decoration: underline;
    }

    .social-icons img {
        width: 30px;
        height: 30px;
        margin-right: 10px;
    }

    .footer-bottom {
        text-align: center;
        padding: 20px 0;
        border-top: 1px solid #444;
    }
</style>
</head>
<body>
<div class="footer">
    <div class="footer-container">
        <div class="footer-section">
            <h2>Foody</h2>
            <p>Diam dolor diam ipsum sit. Aliqu diam amet diam et eos. Clita erat ipsum et lorem et sit, sed stet lorem sit clita.</p>
            <div class="social-icons">
                <a href="#"><img src="data:image/png;base64,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" alt="Twitter"></a>
                <a href="#"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMwAAADACAMAAAB/Pny7AAAAYFBMVEU6VZ////8yT5w0UZ309vqToMfM0uRbcK3c4O1pe7Ta3elida7j5/HQ1Obw8vcsS5p3ir1CXKNKYqartdMlRplugLa0vdi+xd2KmMJ8i7tUaqmAjrufqsyapcnDyt/V2upmnBdfAAAC80lEQVR4nO3cXY+iMACFYbYFUWGofAmiwv//l+NkbzbZqS01bQ/kvPckPOlAkdJJEsYYY4wxxhhjjDHG/ialFPpk7NOzTiglk7qZcn1T7HO0SyhZ3Mfs0Q7zl7ZlmPDHRnSiyK5Llabpn7eVuYh9roaEzJ/z0cDYBkbIoi2tJPiYbnqUlhJ0TFdnR3sKNkb1hzUUaIy8r/gLw8aIOqtWWmAxcmpt72HwGDENqymoGFFfHSygGPVwsWBiunH99YKK6fq192RcjJoWNwsgxvHix8TIy+rJEhfTuMwwoBh1dx4YOIxsZmcLHEY5TjGIGFm7XzFwGHFynC8hMeMHFjCMdJ8w8TCi+OSvDAyTfDDJwGHq1va80+qXzlgYuxmzOg/P++X/+jo24J9kY/Pwn85j03Xql5DGJZGTxQvM6tl0+CsXryxuZuUooAZAmzD/Xq4yuYlheWFuxjvztdmI5fUwY3pkPvZbsSQyM2DStt4Pphpjn6J9RkzZq9jnaJ0Rcz5t47b8kxFzKPaEgXqSfB8xqBGDGjGoEYMaMagRgxoxqBGDGjGobRGj3TWizBj1ZsdJFKh+18jDgFkubzac5HkTnCLy4ajLtAiQltpDf46+BR8bUaz6JH5NY/D3naI4e7JUlx1hjuHfd/rDHMLv0vKHGcIv3vjDtOEXooixKc3CPwJ4w1T3HWHKfkeYpdjRNXOI8L2DN8wc4RsBb5hrsh9M+ghO8Yepsh1hyluEz2q8YSJMM94wEX7N+MMcph1hhvDvZrxh4nxX5wvzDE/xhqnGGC80fWFuMT4S9ISJMs34wnxFWSDwhJmbHWGuUbabeMK0UVZnPtu9qMd0MTBJXZw0Fab/aLLctMfG2vAgdZmXASelOzYO5U1bXKDVRgxqxKBGDGrEoEYMasSgRgxqxKBGDGrEoEYMasSgRgxqxKBGDGrEoEYMasSgRgxqxKBGDGrEoEYMasSgRgxqxKBGDGrEoEYMasSgRgxqxKBGDGrEoEbMmr4BoD1HxMDKq9cAAAAASUVORK5CYII=" alt="Facebook"></a>
                <a href="#"><img src="data:image/png;base64,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" alt="YouTube"></a>
                <a href="#"><img src="data:image/png;base64,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" alt="LinkedIn"></a>
            </div>
        </div>
        <div class="footer-section">
            <h2>Address</h2>
            <p><i class="fas fa-map-marker-alt"></i> 123 Street, New York, USA</p>
            <p><i class="fas fa-phone"></i> +012 345 67890</p>
            <p><i class="fas fa-envelope"></i> info@example.com</p>
        </div>
        <div class="footer-section">
            <h2>Quick Links</h2>
            <ul>
                <li><a href="#">About Us</a></li>
                <li><a href="#">Contact Us</a></li>
                <li><a href="#">Our Services</a></li>
                <li><a href="#">Terms & Condition</a></li>
                <li><a href="#">Support</a></li>
            </ul>
        </div>
        <div class="footer-section">
            <h2>Newsletter</h2>
            <p>Dolor amet sit justo amet elitr clita ipsum elitr est.</p>
            <form>
                <input type="email" placeholder="Your email" required>
                <button type="submit">SignUp</button>
            </form>
        </div>
    </div>
    <div class="footer-bottom">
        <p>&copy; Your Site Name, All Rights Reserved. Designed By Free Website Create</p>
    </div>
</div>
</body>
</html>
