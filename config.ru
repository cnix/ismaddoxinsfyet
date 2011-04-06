require 'rack'

class Maddox

  def call(env)
    ['200', {'Content-Type' => 'text/html'},
      %Q[
        <!html>
          <head>
            <title>Is @maddox in SF yet?</title>
            <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>

            <style type="text/css">
              html, body, div, h1, p, a { margin: 0; padding: 0; }
              body { 
                -webkit-background-size: cover;
                -moz-background-size: cover;
                -o-background-size: cover;
                background-size: cover; 
              }
              
              .maddox0 { background: url(http://f.cl.ly/items/1i2Z012r3a0z0e2t181i/animated.gif) no-repeat center center fixed; }
              .maddox1 { background: url(http://f.cl.ly/items/2f3W1a3z0h392I1q3v36/animated.gif) no-repeat center center fixed; }
              .maddox2 { background: url(http://f.cl.ly/items/0w0q0L070R3x230a2x39/animated.gif) no-repeat center center fixed; }
              .maddox-here { background: url(http://farm5.static.flickr.com/4048/4589917854_26bfe1f034_o.jpg) no-repeat center center fixed; }

              header, section {
                background: rgba(0, 0, 0, 0.6);
                padding: 20px 40px;
                -webkit-box-shadow: black 0 0 5px;
                color: white;
                text-shadow: #ccc 2px 2px 4px;
                font: normal 33px 'Helvetica Neue';
              }

              header {
                float: left;
              }

              header h1 {
                font: normal 33px 'Helvetica Neue';
              }

              section {
                position: fixed;
                bottom: 0;
                right: 0;
              } 

              a {
                color: #fff;
                font-size: 11px;
                font-style: italic;
                text-decoration: none;
              }
  
              a:hover { text-decoration: underline; }
            </style>

            <script type="text/javascript">

              jQuery(document).ready(function ($) {

                var answer    = $('p.answer');
                var now       = new Date();
                var arrival   = new Date("Wed Apr 06 2011 18:22:00 GMT-0700 (PDT)");
                var here      = arrival < now;

                if (here) {
                  answer.attr('class', 'yup').text('yup');
                  var bg = 'maddox-here';
                } else {
                  answer.attr('class', 'nope').text('nope');
                  var bg = 'maddox' + Math.floor(Math.random()*3);
                }

                $('body').attr('class', function () {
                  return bg;
                });

              })
            </script>

          </head>

          <body> 
            <header>
              <h1>Is @maddox in SF yet?</h1>
            </header>
            <section>
              <p class="answer"></p>
            </section>
          </body>
        </html>   
      ]
    ]
  end

end

run Maddox.new
