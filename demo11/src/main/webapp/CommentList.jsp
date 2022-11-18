<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 6/10/2022
  Time: 1:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="css/listComment.css" />
    <link rel="stylesheet" type="text/css" href="css/comment.css" />
</head>
<body>
<div class="ScriptTop">
    <div class="rt-container">
        <div class="col-rt-4" id="float-right">

        </div>
        <div class="col-rt-2">
            <ul>
                <li><a href="https://codeconvey.com/Tutorials/css3-animated-navigation">Previous Demo</a></li>
                <li><a href="https://codeconvey.com/css-comment-box">Back to the Article</a></li>
            </ul>
        </div>
    </div>
</div>

<header class="ScriptHeader">
    <div class="rt-container">
        <div class="col-rt-12">
            <div class="rt-heading">
                <h1>DEMO: CSS Comment Box Form</h1>
                <h2>With Feedback Style</h2>
            </div>
        </div>
    </div>
</header>

<section>
    <div class="rt-container">
        <div class="col-rt-12">

            <div class="content">
                <h2>(5) Readers Comments </h2>
                <div id="reader">
                    <ol>
                        <li>
                            <div class="comment_box"> <a href="#"> <img src="avatar.jpg" alt="avatar"> </a>
                                <div class="inside_comment">
                                    <div class="comment-meta">
                                        <div class="commentsuser">Jone</div>
                                        <div class="comment_date">December 1, 2012 at 1:32 am</div>
                                    </div>
                                </div>
                                <div class="comment-body">
                                    <p>Great blog right here! Also your website quite a bit up fast! What web host are you the use of? Can I am getting your affiliate link for your host? I want my site loaded up as fast as yours lol.</p>
                                </div>
                                <div class="reply"> <a href="#">Reply</a> </div>
                                <div class="arrow-down"></div>
                            </div>
                            <ul class="children">
                                <li>
                                    <!--Comment Box 2-->

                                    <div class="comment_box"> <a href="#"> <img src="avatar.jpg" alt="avatar"> </a>
                                        <div class="inside_comment">
                                            <div class="comment-meta">
                                                <div class="commentsuser">Pat</div>
                                                <div class="comment_date">December 1, 2012 at 1:32 am</div>
                                            </div>
                                        </div>
                                        <div class="comment-body">
                                            <p>Great blog right here! Also your website quite a bit up fast! What web host are you the use of? Can I am getting your affiliate link for your host? I want my site loaded up as fast as yours lol.</p>
                                        </div>
                                        <div class="reply"> <a href="#">Reply</a> </div>
                                        <div class="arrow-down"></div>
                                    </div>
                                    <ul class="children">
                                        <li>
                                            <!--Comment Box 3-->

                                            <div class="comment_box"> <a href="#"> <img src="avatar.jpg" alt="avatar"> </a>
                                                <div class="inside_comment">
                                                    <div class="comment-meta">
                                                        <div class="commentsuser">Shan</div>
                                                        <div class="comment_date">December 1, 2012 at 1:32 am</div>
                                                    </div>
                                                </div>
                                                <div class="comment-body">
                                                    <p>Great blog right here! Also your website quite a bit up fast! What web host are you the use of? Can I am getting your affiliate link for your host? I want my site loaded up as fast as yours lol.</p>
                                                </div>
                                                <div class="reply"> <a href="#">Reply</a> </div>
                                                <div class="arrow-down"></div>
                                            </div>
                                            <ul class="children">
                                                <li>

                                                    <!--Comment Box 4-->

                                                    <div class="comment_box"> <a href="#"> <img src="avatar.jpg" alt="avatar"> </a>
                                                        <div class="inside_comment">
                                                            <div class="comment-meta">
                                                                <div class="commentsuser">CarComm</div>
                                                                <div class="comment_date">December 1, 2012 at 1:32 am</div>
                                                            </div>
                                                        </div>
                                                        <div class="comment-body">
                                                            <p>Great blog right here! Also your website quite a bit up fast! What web host are you the use of? Can I am getting your affiliate link for your host? I want my site loaded up as fast as yours lol.</p>
                                                        </div>
                                                        <div class="reply"> <a href="#">Reply</a> </div>
                                                        <div class="arrow-down"></div>
                                                    </div>
                                                    <ul class="children">
                                                        <li>

                                                            <!--Comment Box 5-->

                                                        </li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                            <div class="comment_box"> <a href="#"> <img src="avatar.jpg" alt="avatar"> </a>
                                <div class="inside_comment">
                                    <div class="comment-meta">
                                        <div class="commentsuser">Jone</div>
                                        <div class="comment_date">December 1, 2012 at 1:32 am</div>
                                    </div>
                                </div>
                                <div class="comment-body">
                                    <p>Great blog right here! Also your website quite a bit up fast! What web host are you the use of? Can I am getting your affiliate link for your host? I want my site loaded up as fast as yours lol.</p>
                                </div>
                                <div class="reply"> <a href="#">Reply</a> </div>
                                <div class="arrow-down"></div>
                            </div>
                        </li>
                    </ol>
                </div>
                <div id="respond">
                    <h3>Leave A Response</h3>
                    <p>Your email address will not be published with your comments.</p>
                    <form id="commentForm" method="post" class="cmxform">
                        <div class="commentfields">
                            <label class="name">Name <span>*</span></label>
                            <input name="name" id="cname" class="comment-input required" type="text">
                        </div>
                        <div class="commentfields">
                            <label class="email">Email <span>*</span></label>
                            <input name="email" id="cemail" class="comment-input required email" type="text">
                        </div>
                        <div class="commentfields">
                            <label class="website">Website</label>
                            <input name="website" class="comment-input" type="text">
                        </div>
                        <div class="commentfields">
                            <label>Comments <span>*</span></label>
                            <textarea id="ccomment" class="comment-textarea required" name="comment"></textarea>
                        </div>
                        <div class="commentfields">
                            <input class="commentbtn" type="submit" value="Post Comment">
                        </div>
                    </form>
                </div>
            </div>

        </div>
    </div>
</section>

</body>
</html>
