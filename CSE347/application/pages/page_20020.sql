prompt --application/pages/page_20020
begin
--   Manifest
--     PAGE: 20020
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>23218690882094214236
,p_default_application_id=>172091
,p_default_id_offset=>0
,p_default_owner=>'WKSP_JUBAYERCSE302SUMMER23'
);
wwv_flow_imp_page.create_page(
 p_id=>20020
,p_name=>'About this Application'
,p_alias=>'ABOUT-THIS-APPLICATION'
,p_step_title=>'About this Application'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'img {',
'    width:100%;',
'    max-width:100%;',
'    height:950px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(41584388985371249651)
,p_protection_level=>'C'
,p_help_text=>'All application help text can be accessed from this page. The links in the "Documentation" region give a much more in-depth explanation of the application''s features and functionality.'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41531281489091838534)
,p_plug_name=>'Text'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(3435354875481628565)
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="en">',
'<head>',
'    <meta charset="UTF-8">',
'    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'    <title>The Power of Blood Donation</title>',
'    <!-- Add your CSS styles and icon library link here -->',
'    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">',
'    <style>',
'        body {',
'            font-family: ''Arial'', sans-serif;',
'            margin: 0;',
'            padding: 0;',
'            background-color: #f4f4f4;',
'        }',
'',
'        header {',
'            background-color: #333;',
'            color: #fff;',
'            text-align: center;',
'            padding: 1rem;',
'        }',
'',
'        section {',
'            background-color: #fff;',
'            padding: 20px;',
'            margin: 20px;',
'            border-radius: 8px;',
'            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);',
'        }',
'',
'        h2 {',
'            color: #333;',
'        }',
'',
'        p {',
'            color: #555;',
'        }',
'',
'        ul {',
'            list-style: none;',
'            padding: 0;',
'            margin: 0;',
'        }',
'',
'        li {',
'            margin-bottom: 8px;',
'        }',
'',
'        footer {',
'            background-color: #333;',
'            color: #fff;',
'            text-align: center;',
'            padding: 1rem;',
'            position: fixed;',
'            bottom: 0;',
'            width: 100%;',
'        }',
'    </style>',
'</head>',
'<body>',
'',
'    <header>',
'        <h1><i class="fas fa-hand-holding-medical"></i> The Power of Blood Donation</h1>',
'    </header>',
'',
'    <section id="introduction">',
'        <h2>Introduction:</h2>',
'        <p><i class="fas fa-circle"></i> <strong>Point 1:</strong> Emphasize the vital role of blood in our lives and its potential scarcity for some.</p>',
'        <p><i class="fas fa-circle"></i> <strong>Point 2:</strong> Introduce blood donation as a selfless act with the power to save lives and bridge communities.</p>',
'    </section>',
'',
'    <section id="impact">',
'        <h2>The Impact of Blood Donation:</h2>',
'        <p><i class="fas fa-circle"></i> <strong>Point 3:</strong> Highlight the diverse scenarios where donated blood proves crucial (premature babies, surgeries, illnesses).</p>',
'        <p><i class="fas fa-circle"></i> <strong>Point 4:</strong> Illustrate the impact through personal stories of recipients and donors (emphasize emotional connection).</p>',
'        <p><i class="fas fa-circle"></i> <strong>Point 5:</strong> Go beyond individual lives and emphasize the broader societal benefits of blood donation (unity, trust).</p>',
'    </section>',
'',
'    <section id="challenges-rewards">',
'        <h2>Challenges and Rewards:</h2>',
'        <p><i class="fas fa-circle"></i> <strong>Point 6:</strong> Acknowledge potential anxieties and misconceptions surrounding blood donation.</p>',
'        <p><i class="fas fa-circle"></i> <strong>Point 7:</strong> Emphasize the rewards of donating: satisfaction, heroism, positive emotional impact.</p>',
'        <p><i class="fas fa-circle"></i> <strong>Point 8:</strong> Encourage potential donors by framing it as a challenge to overcome fears and make a tangible difference.</p>',
'    </section>',
'',
'    <section id="call-to-action">',
'        <h2>Call to Action:</h2>',
'        <p><i class="fas fa-circle"></i> <strong>Point 9:</strong> Issue a direct and inspiring call to action to participate in blood donation drives.</p>',
'        <p><i class="fas fa-circle"></i> <strong>Point 10:</strong> End with a powerful statement summarizing the life-affirming nature of blood donation.</p>',
'    </section>',
'',
'    <section id="bonus-points">',
'        <h2>Bonus Points:</h2>',
'        <ul>',
'            <li><i class="fas fa-check-circle"></i> Include statistics or facts about blood donation needs and its impact.</li>',
'            <li><i class="fas fa-check-circle"></i> Mention historical or cultural contexts of blood donation and its significance.</li>',
'            <li><i class="fas fa-check-circle"></i> Offer practical tips for overcoming anxieties and preparing for blood donation.</li>',
'            <li><i class="fas fa-check-circle"></i> Personalize the essay by sharing your own experience or connection to blood donation.</li>',
'        </ul>',
'    </section>',
'',
'    <!-- Add your additional sections as needed -->',
'',
'',
'',
'</body>',
'</html>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41584389641394249652)
,p_plug_name=>'slide'
,p_region_template_options=>'#DEFAULT#:js-cycle5s:t-Region--carouselSpin:t-Region--removeHeader:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_imp.id(3435297132975628537)
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41531280968691838529)
,p_plug_name=>'2'
,p_parent_plug_id=>wwv_flow_imp.id(41584389641394249652)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(3435354875481628565)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>'<img src = "#APP_FILES#2.jpg"/>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41531281022872838530)
,p_plug_name=>'3'
,p_parent_plug_id=>wwv_flow_imp.id(41584389641394249652)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(3435354875481628565)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>'<img src = "#APP_FILES#3.jpg"/>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41531281118474838531)
,p_plug_name=>'5'
,p_parent_plug_id=>wwv_flow_imp.id(41584389641394249652)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(3435354875481628565)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>'<img src = "#APP_FILES#5.jpg"/>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp.component_end;
end;
/
