INSERT INTO users (photo, full_name, username, email, phone, password, role) VALUES
('https://i.pinimg.com/736x/d0/58/de/d058de5ebda75f524443b0c707b84135.jpg', 'Rodrigo Parma', 'rodrigoparma02', 'rodrigoparma@gmail.com', 
'19996661071', 'rodrigop02', 'professor'),
('https://i.pinimg.com/736x/a5/22/20/a5222010f5d71c7b48c36f78573b8896.jpg', 'Maria Silva', 'mariasilva', 'maria.silva@example.com', 
'11999990001', 'maria01', 'professor'),
('https://i.pinimg.com/736x/d2/c9/b7/d2c9b7a1ea6d1306b217b0f3016ad265.jpg', 'João Pereira', 'joaopereira', 'joao.pereira@example.com', 
'11999990002', 'joao02', 'professor'),
('https://i.pinimg.com/736x/f5/3f/e6/f53fe6ba57b9f80c5f9d1125f22deea0.jpg', 'Mariana Costa', 'marianacosta', 'mariana.costa@example.com', 
'21988880003', 'mariana03', 'professor'),
('https://i.pinimg.com/736x/95/67/b1/9567b1043470a9cab04621b3eb58c8ce.jpg', 'Carlos Alberto', 'carlosalberto', 'carlos.alberto@example.com', 
'31977770004', 'carlos04', 'professor');

INSERT INTO users (photo, full_name, username, email, phone, password, role) VALUES
('https://i.pinimg.com/1200x/b4/3a/3e/b43a3e37f66f9161a5d31a87fb48a145.jpg', 'Ana Souza', 'anasouza', 'anasouza@gmail.com', 
'41955551234', 'ana123', 'aluno'),
('https://i.pinimg.com/736x/81/74/bc/8174bc895d3947c56f504c6d26d1525e.jpg', 'Bruno Lima', 'brunolima', 'brunolima@gmail.com', 
'41955554321', 'bruno123', 'aluno'),
('https://i.pinimg.com/736x/af/8a/e6/af8ae63c6d0139d807dd1ca16214e3b6.jpg', 'Carla Mendes', 'carlamendes', 'carlamendes@gmail.com', 
'41955557654', 'carla123', 'aluno'),
('https://i.pinimg.com/736x/65/d0/74/65d0747b42c81a76c9b49a548d7009b2.jpg', 'Daniel Ferreira', 'danielferreira', 'danielferreira@gmail.com', 
'41955559876', 'daniel123', 'aluno'),
('https://i.pinimg.com/736x/7c/b4/ed/7cb4edc16cee1aaf3bf09fb98f0821c6.jpg', 'Elisa Gomes', 'elisagomes', 'elisagomes@gmail.com', 
'41955553421', 'elisa123', 'aluno'),
('https://i.pinimg.com/1200x/cb/ba/08/cbba08e7f751a14e536eeca178818c15.jpg', 'Felipe Rocha', 'feliperocha', 'feliperocha@gmail.com', 
'41955556789', 'felipe123', 'aluno'),
('https://i.pinimg.com/736x/55/71/8a/55718ace3fb9e212ae701606a39d14fe.jpg', 'Gabriela Alves', 'gabrielaalves', 'gabrielaalves@gmail.com', 
'41955551235', 'gabriela123', 'aluno'),
('https://i.pinimg.com/736x/80/a6/49/80a64977e4a4749d8ce504e54f186f0e.jpg', 'Hugo Santos', 'hugosantos', 'hugosantos@gmail.com', 
'41955554322', 'hugo123', 'aluno'),
('https://i.pinimg.com/736x/7e/fb/b2/7efbb2a1a8a08bab88c36f9d0d8ec8e4.jpg', 'Isabela Ribeiro', 'isabelaribeiro', 'isabelaribeiro@gmail.com', 
'41955557655', 'isabela123', 'aluno'),
('https://i.pinimg.com/736x/12/a1/2d/12a12d15c2274c180fa91c5888e8e49e.jpg', 'João Marcos', 'joaomarcos', 'joaomarcos@gmail.com', 
'41955559877', 'joao123', 'aluno'),
('https://i.pinimg.com/736x/66/00/c5/6600c5f4eb7f250dcf4a292de48e3ccc.jpg', 'Karla Dias', 'karladias', 'karladias@gmail.com', 
'41955553422', 'karla123', 'aluno'),
('https://i.pinimg.com/736x/0e/d9/ce/0ed9cea94dd7bc4927bc57a2ce74e34f.jpg', 'Lucas Nascimento', 'lucasnascimento', 'lucasnascimento@gmail.com', 
'41955556780', 'lucas123', 'aluno'),
('https://i.pinimg.com/736x/ae/d5/30/aed5309b656778319a45ecbd4c520590.jpg', 'Marina Oliveira', 'marinaoliveira', 'marinaoliveira@gmail.com', 
'41955551236', 'marina123', 'aluno'),
('https://i.pinimg.com/736x/03/ca/54/03ca5433f09ce3431c59c66ea4c82971.jpg', 'Nicolas Cardoso', 'nicolascardoso', 'nicolascardoso@gmail.com', 
'41955554323', 'nicolas123', 'aluno');

INSERT INTO courses (owner_id, photo, title, description, category)
VALUES
(6, '', 'English Flow: Professional Communication', 
'A course designed to develop clear, objective, and professional communication skills in English for corporate environments.', 'Languages'),

(7, '', 'Emotion & Clarity: Emotional Intelligence in Practice', 
'A practical course focused on developing emotional intelligence, self-awareness, and clear communication in both personal and professional life.', 'Personal Development'),

(8, '', 'Creative Mindset: Unlock Your Innovative Potential', 
'A course focused on enhancing creativity, problem-solving, and innovation through practical exercises and real-world applications.', 'Personal Development'),

(9, '', 'Leadership Path: Inspiring Teams with Purpose', 
'A leadership course designed to help students understand team dynamics, motivation strategies, and purpose-driven management.', 'Business'),

(10, '', 'Digital Skills Accelerator: Mastering Modern Tools', 
'A practical course that teaches essential digital tools and technologies to improve productivity and performance in the modern workplace.', 'Technology');

(11, '', 'Digital Strategy: Building a Strong Online Presence', 
'A course focused on developing digital positioning, online identity, and content strategies for a professional online presence.', 'Development'),

(12, '', 'Leadership Essentials: Foundations of Modern Leadership', 
'A complete leadership guide covering communication, emotional intelligence, delegation, conflict resolution, and modern leadership practices.', 'Development'),

(13, '', 'Creative Productivity: Mastering Focus & Innovation', 'A productivity course designed to help students unlock creativity, manage time effectively, and convert ideas into meaningful results.', 'Development'),

(14, '', 'Smart Communication: Clear & Confident Expression', 
'A course that develops clarity, confidence, and effectiveness in daily and professional communication.', 'Development'),

(15, '', 'Personal Finance Mastery: Building Healthy Financial Habits', 
'A practical finance course teaching budgeting, saving, managing expenses, and creating healthy financial habits.', 'Development');

INSERT INTO lessons (course_id, title, subtitle, content, media) VALUES
(6, 'Workplace Introductions', 'How to introduce yourself professionally in English', 
'Learning how to introduce yourself in English is the first step to communicating with confidence in the workplace. In this lesson, students learn how to say their name, job position, and department, as well as greet colleagues and start conversations politely. Simple expressions like “Hello, my name is Maria. I work in the marketing department.” and “Nice to meet you, John! What do you do at the company?” help build natural and clear connections.', 'https://youtu.be/ai9bWeihYWM'),

(6, 'Professional Email Communication', 'Writing professional emails in English', 
'Email communication is one of the most common forms of interaction in the corporate environment. In this lesson, students learn how to structure a professional email with appropriate greetings, a clear and objective body, and polite closings. Expressions like “Dear Mr. Smith, I hope this message finds you well.” and “Thank you for your time and attention.” demonstrate courtesy and help build strong professional relationships.', 'https://youtu.be/pwp6N9s3ecw?si=hoVrh5IWEw_-pg4i'),

(6, 'Office Vocabulary', 'Common workplace words and expressions', 
'Mastering vocabulary used in corporate environments greatly improves daily communication. This lesson presents common words used in emails, meetings, and reports, such as meeting, deadline, boss, task, and report. Students learn to apply these terms in real sentences like “We have a meeting at 10 a.m.” and “The deadline for this project is next Friday.” to increase confidence when speaking or writing in English at work.', 'https://youtu.be/2BF9E_lCbHQ?si=T_kipyDIAHpegct8'),

(6, 'Meetings and Collaboration', 'How to participate in meetings in English', 
'Participating in meetings in English requires clarity, active listening, and proper vocabulary. In this lesson, students learn expressions for agreeing, disagreeing, and presenting ideas politely. Phrases like “I agree with you.” and “That’s an interesting point, but I think…” help maintain a balanced and productive discussion. Students also learn how to start and end meetings naturally, with expressions like “Let’s move to the next point.” and “Thank you for your time.”', 'https://youtu.be/W97woRZKARs?si=3RpyZ_u1-M422LJJ'),

(6, 'Customer Service Skills', 'How to assist customers in English', 
'Handling customers in English is essential for businesses that deal with international clients. In this lesson, students learn practical phrases for greeting, offering help, and solving problems politely. Expressions like “How can I help you today?” and “I’m sorry for the inconvenience. Let me check that for you.” show empathy and professionalism. The focus is on clear, polite, and efficient communication that improves customer satisfaction.', 'https://youtu.be/LRJXMKZ4wOw?si=LS7csE1OmdeG7CWU'),

(6, 'Professional Presentations', 'How to make presentations in English', 
'Speaking in public—especially in another language—can be challenging. This lesson teaches students how to structure a presentation in English with an introduction, development, and conclusion. Students learn useful phrases like “Good morning, everyone. Today I’m going to talk about our new project.” and closing expressions like “To sum up, these are the main points of our plan.” This lesson helps students organize ideas and present with confidence.', 'https://youtu.be/fzIxD1jXn44?si=beD9q89MbqgCjUbU'),

(6, 'Telephone Communication', 'Answering and making calls with confidence', 
'Answering phone calls in English requires attention and practice. In this lesson, students learn how to start conversations, transfer calls, and take messages clearly and politely. Useful expressions include “Good morning, Marketing Department. How can I help you?” and “Can I take a message?” Students also learn how to ask for repetition or clarification to avoid misunderstandings.', 'https://youtu.be/j26_A7crDrA?si=FX9eOEaHTF-EmPq2'),

(6, 'Everyday Work Expressions', 'Common daily expressions used in the workplace', 
'In daily corporate life, there are many informal and useful expressions that make communication more natural. In this lesson, students learn phrases like “Let’s get started!”, “That’s a great idea!”, and “I’ll follow up with you tomorrow.” These expressions are useful in meetings, conversations with colleagues, and quick exchanges, helping students build fluency and spontaneity.', 'https://youtu.be/-7PT61PdEss?si=hxCqbSPk5-zuI5YQ'),

(6, 'Feedback and Evaluation', 'How to give and receive feedback in English', 
'Giving and receiving feedback is essential for professional growth. In this lesson, students learn expressions to offer constructive comments and respond politely and openly. Phrases like “I really appreciate your feedback.” and “Next time, I’ll try to improve this part.” show maturity and willingness to improve. The lesson reinforces the importance of maintaining a positive tone, even when addressing areas for improvement.', 'https://youtu.be/_9Gr4cE4S0I?si=hF8SwxCy1tEwscNC'),

(6, 'Cross-Cultural Communication', 'How to communicate effectively with people from different cultures', 
'Understanding cultural differences is essential in global workplaces. In this lesson, students learn how to adapt their communication style, avoid misunderstandings, and show respect for diverse perspectives. Expressions like “Could you please clarify what you mean?” and “In my culture, we usually do it this way.” help create clearer and more inclusive interactions. The lesson focuses on building cultural awareness, empathy, and professional rapport in multinational environments.', 'lesson11.jpg'),

(6, 'Networking and Small Talk', 'How to socialize and build connections at work', 
'Networking is an essential part of the modern corporate world. In this lesson, students learn how to start informal conversations, ask polite questions, and show genuine interest during professional events. Expressions like “It was nice meeting you. Let’s keep in touch.” and “Are you enjoying the event?” help build valuable connections and communicate naturally in social work situations.', 'lesson10.jpg');

INSERT INTO lessons (course_id, title, subtitle, content, media) VALUES
(7, 'Introduction to Emotional Intelligence', 'Understanding the foundations of EI', 
'In this lesson, students are introduced to the concept of Emotional Intelligence (EI) and why it is essential in both personal and professional life. They learn the five core components: self-awareness, self-regulation, motivation, empathy, and social skills.', 'https://youtu.be/tbKr0EuiVjc?si=q-h9IVTiOUVeZNLg'),

(7, 'Self-Awareness', 'Recognizing your emotions and reactions', 
'Students explore how to identify their emotions and understand how feelings influence thoughts and behavior. The lesson includes reflection exercises and phrases such as “I am noticing that I feel anxious right now.” to help label emotions clearly.', 'https://youtu.be/tGdsOXZpyWE?si=N2lx0b8B0L3LvpNl'),

(7, 'Self-Regulation', 'Managing emotions with clarity and balance', 
'This lesson teaches strategies to handle difficult emotions, avoid impulsive reactions, and maintain emotional balance. Students practice techniques such as breathing, reframing thoughts, and pausing before responding.', 'https://youtu.be/INGgzIO7vOY?si=Sj2X8in1RKpT5IWm'),

(7, 'Empathy in Practice', 'Understanding and connecting with others', 
'Students learn how to recognize other peoples emotions, listen actively, and respond with understanding. The lesson includes useful expressions like “I understand how you feel.” and “That sounds challenging, how can I help?”.', 'https://youtu.be/SIuwJ7kb3EA?si=40otLriy8VB6_BNx'),

(7, 'Effective Communication', 'Expressing emotions with clarity and respect', 
'This lesson focuses on verbal and nonverbal communication skills that improve emotional clarity. Students learn how to express needs, set boundaries, and handle sensitive conversations using assertive language.', 'https://youtu.be/QGHBq5OEsBM?si=EVprpjG4dtQH-02I'),

(7, 'Managing Stress and Pressure', 'Developing emotional resilience at work', 
'Students explore how stress affects the body and mind, and learn techniques to stay calm in high-pressure situations. The lesson includes grounding practices, guided breathing, and practical workplace examples.', 'https://youtu.be/15GaKTP0gFE?si=cp3ErVG0pkh59S-O'),

(7, 'Conflict Resolution', 'Handling disagreements with emotional intelligence', 
'This lesson teaches how to address conflicts respectfully while maintaining emotional control. Students learn phrases like “Let’s try to find a solution together.” and techniques for staying calm and objective during disagreements.', 'https://youtu.be/gu8gSuF_lvw?si=ZM5GEh6ZRqETpXLQ'),

(7, 'Building Healthy Relationships', 'Strengthening personal and professional connections', 
'Students discover how emotional intelligence enhances teamwork, trust, and collaboration. The lesson covers active listening, appreciation statements, and maintaining supportive interactions.', 'https://youtu.be/ELLaMPiPqPM?si=-lZBmymacWPI7b-_'),

(7, 'Emotional Clarity in Decision-Making', 'Making thoughtful and balanced choices', 
'This lesson explores how emotions influence decision-making. Students learn methods to separate emotion from impulse, evaluate options clearly, and make decisions that align with long-term goals.', 'https://youtu.be/3-ahNeWAGvE?si=yws4ZJmXOQK9NHUV'),

(7, 'Personal Growth and EI Development', 'Creating a long-term emotional intelligence plan', 
'In the final lesson, students reflect on their progress and create a personal plan to continue improving emotional intelligence. Activities include goal-setting, journaling, and daily emotional check-ins.', 'https://youtu.be/A2arUdwea-w?si=fLADa0wUAut1iXyi');

INSERT INTO lessons (course_id, title, subtitle, content, media) VALUES
(8, 'Introduction to Creative Thinking', 'Understanding how creativity works',
'In this lesson, students explore what creativity really means and how it can be developed. They learn the difference between divergent and convergent thinking, and how creative ideas emerge from curiosity and experimentation.', 'https://youtu.be/Kr8zRjWgxBo?si=qJIkNui5-NN_tA0T'),

(8, 'Breaking Mental Barriers', 'Overcoming blocks and limiting beliefs',
'Students learn how to identify limiting beliefs that restrict innovation and how to replace them with empowering thoughts. The lesson includes mindset-shifting techniques and reflective exercises to unlock new perspectives.', 'https://youtu.be/OIzzg6B9-60?si=bIz4c_2o55CzQKEj'),

(8, 'Boosting Curiosity', 'Asking better questions to spark new ideas',
'This lesson focuses on the power of curiosity. Students practice techniques like the “Why?” chain, open-ended questioning, and perspective switching to generate original ideas and expand creative thinking.', 'https://youtu.be/uY1-eXcIp3w?si=aNB5-0AYcPQM9TSN'),

(8, 'Brainstorming Strategies', 'Generating ideas effectively',
'Students learn structured brainstorming methods such as mind mapping, rapid ideation, SCAMPER, and the 6 Thinking Hats. The lesson emphasizes quantity over quality at the initial stage and encourages creative freedom.', 'https://youtu.be/FkvCBUvH6Zc?si=LBQjfL6WBeCQOwNs'),

(8, 'Creative Problem-Solving', 'Innovative approaches to challenges',
'This lesson teaches students how to view problems from multiple angles and apply creative frameworks like design thinking. They learn to empathize with users, define problems clearly, prototype, and test new solutions.', 'https://youtu.be/QbxyiUG5RRI?si=RzO770ff8xUBEqWp'),

(8, 'Innovation in Everyday Life', 'Applying creativity to real situations',
'Students discover how creativity is not limited to art—it appears in daily routines, workplace challenges, and personal decisions. The lesson includes practical examples and prompts to develop creative habits.', 'https://youtu.be/LcLcZ6EsX4Y?si=7WjzX7u1l1xdMgRu'),

(8, 'Thinking Outside the Box', 'Developing unconventional and bold ideas',
'This lesson encourages students to challenge assumptions, break patterns, and explore unusual solutions. Techniques include random stimulation, analogies, and “What if…?” exploration.', 'https://youtu.be/SJXleXSglFQ?si=1Hn4d4uLCkLpt9hq'),

(8, 'Collaboration & Creativity', 'Creating innovative ideas as a team',
'Students learn how teamwork enhances creativity through diversity of thought. The lesson covers brainstorming etiquette, active listening, group synergy, and how to transform team discussions into innovative outcomes.', 'https://youtu.be/2DmFFS0dqQc?si=bMpCI7vWd2KQVhbv'),

(8, 'Creative Confidence', 'Building courage to share your ideas',
'This lesson focuses on overcoming fear of judgment, embracing mistakes, and building confidence to share creative ideas. Students practice positive self-talk and learn how to transform failures into growth.', 'https://youtu.be/16p9YRF0l-g?si=at-kd8sn_iBRYv6n'),

(8, 'Turning Ideas into Action', 'Transforming creativity into real projects',
'In the final lesson, students learn how to evaluate ideas, plan actionable steps, and bring creative projects to life. Topics include prioritization, prototyping, iteration, and maintaining creative discipline.', 'https://youtu.be/5ci8kh-WxM0?si=-pzhg_CtCbqPPuqv');

INSERT INTO lessons (course_id, title, subtitle, content, media) VALUES
(9, 'Introduction to Leadership', 'Understanding what true leadership means',
'In this lesson, students explore the foundations of leadership, the difference between leading and managing, and the qualities of impactful leaders. The lesson emphasizes purpose, vision, and responsibility.', 'leadership_intro.jpg'),

(9, 'Building a Leadership Mindset', 'Developing attitudes that inspire others',
'Students learn how mindset shapes leadership effectiveness. Topics include accountability, growth mindset, resilience, and self-motivation. Practical exercises help students reflect on their personal leadership style.', 'leadership_mindset.jpg'),

(9, 'Understanding Team Dynamics', 'How teams work and how leaders support them',
'This lesson explains group behavior, team roles, collaboration patterns, and how leaders can create a productive and supportive team environment. Students learn how to identify strengths and weaknesses within a team.', 'team_dynamics.jpg'),

(9, 'Communication for Leaders', 'Communicating with clarity, purpose, and empathy',
'Students explore essential communication skills for leadership, including active listening, assertiveness, and delivering clear messages. The lesson also covers tone, body language, and motivating others through communication.', 'leader_communication.jpg'),

(9, 'Motivating and Inspiring Teams', 'Techniques to engage and energize people',
'This lesson teaches how to inspire teams through recognition, purpose, autonomy, and trust. Students learn practical strategies to encourage ownership, promote creativity, and maintain long-term engagement.', 'team_motivation.jpg'),

(9, 'Decision-Making & Strategic Thinking', 'Making smart, balanced, and purposeful decisions',
'Students learn decision-making frameworks, risk assessment, and strategic thinking skills. The lesson focuses on evaluating options, forecasting consequences, and aligning decisions with team goals and values.', 'decision_making.jpg'),

(9, 'Conflict Management', 'Handling disagreements with respect and effectiveness',
'This lesson teaches leaders how to approach conflict constructively. Students learn techniques such as mediation, reframing, and solution-focused dialogue. The objective is to transform conflict into growth opportunities.', 'conflict_management.jpg'),

(9, 'Giving and Receiving Feedback', 'Improving performance through constructive dialogue',
'Students learn how to deliver feedback clearly and respectfully while maintaining motivation. The lesson also covers receiving feedback with openness and using it for continuous improvement.', 'feedback_leadership.jpg'),

(9, 'Ethical and Purpose-Driven Leadership', 'Leading with values, integrity, and vision',
'This lesson focuses on ethical decision-making, integrity, transparency, and alignment with core values. Students learn how purpose-driven leadership inspires trust and builds strong organizational cultures.', 'ethical_leadership.jpg'),

(9, 'Leading High-Performance Teams', 'Creating, guiding, and sustaining successful teams',
'In the final lesson, students learn how to structure high-performance teams, set ambitious goals, track progress, and celebrate achievements. The focus is on long-term leadership growth and team excellence.', 'high_performance.jpg');

INSERT INTO lessons (course_id, title, subtitle, content, media) VALUES
(10, 'Introduction to Digital Skills', 'Understanding essential digital competencies',
'In this lesson, students explore the importance of digital literacy in the modern workplace. They learn about key tools, platforms, and the role of technology in improving productivity and communication.', 'digital_intro.jpg'),

(10, 'Productivity Tools', 'Mastering tools that improve efficiency',
'Students learn how to use essential productivity tools such as calendars, task managers, and digital planners. The lesson covers best practices for organizing schedules, deadlines, and daily workflow.', 'productivity_tools.jpg'),

(10, 'Cloud Storage and Collaboration', 'Working effectively with cloud-based platforms',
'This lesson introduces cloud tools like Google Drive, OneDrive, and Dropbox. Students learn how to upload, share, and collaborate on documents in real time, improving teamwork and accessibility.', 'cloud_collaboration.jpg'),

(10, 'Digital Communication Tools', 'Using modern communication platforms',
'Students explore tools such as Slack, Microsoft Teams, and Zoom. They learn how to send messages, join virtual meetings, manage channels, and communicate professionally in digital environments.', 'digital_communication.jpg'),

(10, 'Data Organization & Spreadsheets', 'Structuring and analyzing information',
'This lesson teaches the basics of spreadsheets using tools like Excel or Google Sheets. Students learn how to create tables, apply formulas, filter data, and interpret results for decision-making.', 'spreadsheets.jpg'),

(10, 'Cybersecurity Basics', 'Protecting information and staying safe online',
'Students learn essential cybersecurity concepts, including strong passwords, two-factor authentication, phishing detection, and safe browsing practices. The lesson helps them navigate digital spaces securely.', 'cybersecurity.jpg'),

(10, 'Digital Project Management', 'Managing tasks and projects using online tools',
'This lesson introduces project management platforms such as Trello, Asana, and Notion. Students learn how to create boards, assign tasks, track progress, and organize projects efficiently.', 'project_management.jpg'),

(10, 'Social Media for Professionals', 'Using social platforms strategically',
'Students explore how to use LinkedIn, Instagram, and other platforms to build professional presence, share content, and communicate with audiences. The lesson highlights best practices and common mistakes.', 'social_media.jpg'),

(10, 'Automation & AI Tools', 'Using modern automation and AI to boost productivity',
'This lesson introduces automation tools such as Zapier, as well as everyday AI assistants. Students learn how to automate tasks, streamline workflows, and use AI responsibly to enhance efficiency.', 'automation_ai.jpg'),

(10, 'Digital Problem-Solving', 'Using technology to solve real-world challenges',
'In the final lesson, students learn how to apply digital tools creatively to solve problems. They explore troubleshooting strategies, logical thinking, and how to choose the right tool for each task.', 'digital_problem_solving.jpg');

INSERT INTO lessons (course_id, title, subtitle, content, media) VALUES
(11, 'Understanding Digital Positioning', 'Introduction to digital positioning',
 'Learn the basics of how digital positioning works and why it matters.', ''),

(11, 'Creating a Professional Online Identity', 'Building your online identity',
 'Develop a consistent and trustworthy online presence across all platforms.', ''),

(11, 'Social Media Branding Essentials', 'Branding fundamentals', 
'Understand key branding elements that strengthen your social media presence.', ''),

(11, 'Defining Your Target Audience', 'Audience identification', 
'Learn how to identify, study, and segment your ideal audience.', ''),

(11, 'Crafting an Effective Content Strategy', 'Content strategy foundations', 
'Build a strategic content plan aligned with your goals.', ''),

(11, 'Engaging With Online Communities', 'Community engagement', 
'Develop strong, active relationships within online communities.', ''),

(11, 'SEO Basics for Visibility', 'SEO fundamentals', 
'Improve your organic visibility using simple SEO techniques.', ''),

(11, 'Digital Etiquette & Trust Building', 'Online professionalism', 
'Behave professionally online and build digital trust.', ''),

(11, 'Measuring Online Performance', 'Performance metrics', 
'Track, analyze, and understand key digital indicators.', ''),

(11, 'Maintaining a Digital Presence', 'Long-term consistency', 
'Learn how to keep a relevant and consistent digital presence.', '');

INSERT INTO lessons (course_id, title, subtitle, content, media) VALUES
(12, 'What Makes a Leader?', 'Leadership fundamentals', 
'Explore the essential qualities that define effective leaders.', ''),

(12, 'Core Leadership Styles', 'Leadership styles', 
'Understand key leadership styles and when to apply each one.', ''),

(12, 'Emotional Intelligence in Leadership', 'Emotional intelligence', 
'Learn how emotional intelligence strengthens leadership skills.', ''),

(12, 'Communication That Inspires', 'Inspirational communication', 
'Develop communication skills that motivate and inspire others.', ''),

(12, 'Delegation & Trust Building', 'Delegation skills', 
'Learn how to delegate effectively and build trust within your team.', ''),

(12, 'Giving & Receiving Feedback', 'Feedback mastery', 
'Master the art of giving and receiving productive feedback.', ''),

(12, 'Conflict Resolution Techniques', 'Conflict resolution', 
'Learn techniques to resolve conflicts professionally and safely.', ''),

(12, 'Motivating Teams', 'Team motivation', 
'Explore strategies to motivate and energize teams.', ''),

(12, 'Decision-Making Under Pressure', 'Critical decision-making', 
'Improve your ability to make decisions during high-pressure situations.', ''),

(12, 'Building a Leadership Plan', 'Leadership development plan', 
'Create a personalized plan for continuous leadership growth.', '');


INSERT INTO lessons (course_id, title, subtitle, content, media) VALUES
(13, 'Understanding Your Creative Process', 'Your creative workflow', 
'Identify how your creative process works and how to improve it.', ''),

(13, 'Breaking Mental Blocks', 'Overcoming creative blocks', 
'Learn techniques to break mental barriers and regain creativity.', ''),

(13, 'Time Management for Creatives', 'Creative time management', 
'Organize your time without losing your creative flow.', ''),

(13, 'Tools for Improving Focus', 'Focus enhancement tools', 
'Discover tools and strategies to improve concentration and focus.', ''),

(13, 'Turning Ideas Into Action', 'Execution skills', 
'Transform creative ideas into real, actionable projects.', ''),

(13, 'Structured Brainstorming', 'Brainstorming techniques', 
'Use structured brainstorming methods to generate innovative ideas.', ''),

(13, 'Enhancing Problem-Solving', 'Creative problem-solving', 
'Strengthen your ability to solve problems creatively.', ''),

(13, 'Creative Teamwork', 'Collaborative creativity', 
'Learn how to work creatively and productively in teams.', ''),

(13, 'Building Habits for Creativity', 'Creative habits', 
'Develop daily habits that improve your creativity long-term.', ''),

(13, 'Designing a Productivity System', 'Personal productivity system', 
'Build your own productivity system tailored to your creative style.', '');

INSERT INTO lessons (course_id, title, subtitle, content, media) VALUES
(14, 'Introduction to Productivity Tools', 'Modern work essentials', 
'Overview of the main digital tools used in productive workflows.', ''),

(14, 'Task Management', 'Organizing your work', 
'Using digital apps to manage tasks, deadlines, and routines.', ''),

(14, 'Cloud Collaboration', 'Working from anywhere', 
'How cloud platforms help teams collaborate in real time.', ''),

(14, 'Time Optimization', 'Doing more in less time', 
'Techniques such as Pomodoro and time blocking.', ''),

(14, 'Digital Note-Taking', 'Save everything clearly', 
'Best practices for keeping organized digital notes.', ''),

(14, 'Automation Basics', 'Let technology work for you', 
'Using automation to simplify repetitive tasks.', ''),

(14, 'Email Management', 'Controlling your inbox', 
'Strategies to avoid overload and communicate effectively.', ''),

(14, 'Focus & Distraction Control', 'Staying on track', 
'Digital habits to reduce distractions and improve focus.', ''),

(14, 'Remote Work Skills', 'Hybrid productivity', 
'How to stay productive in remote and hybrid environments.', ''),

(14, 'Long-Term Productivity Systems', 'Consistency is key', 
'Building a sustainable personal productivity system.', '');

INSERT INTO lessons (course_id, title, subtitle, content, media) VALUES
(15, 'Understanding Soft Skills', 'Why they matter', 
'Introduction to soft skills and how they influence professional success.', ''),

(15, 'Effective Communication', 'Speak with clarity', 
'How to express ideas clearly and professionally.', ''),

(15, 'Teamwork Essentials', 'Working well with others', 
'Collaboration strategies for harmonious teamwork.', ''),

(15, 'Problem-Solving', 'Thinking with purpose', 
'Approaches to solve problems using critical thinking.', ''),

(15, 'Adaptability', 'Flexibility in the workplace', 
'How to adapt to new environments, tasks, and challenges.', ''),

(15, 'Professional Etiquette', 'Behavior that stands out', 
'Rules and expectations of professional conduct.', ''),

(15, 'Negotiation Basics', 'Finding win-win solutions', 
'Skills to negotiate with confidence and fairness.', ''),

(15, 'Public Speaking', 'Confidence on stage', 
'Techniques to improve presentations and reduce anxiety.', ''),

(15, 'Leadership Foundations', 'Influencing others', 
'Core leadership behaviors even without a formal title.', ''),

(15, 'Career Development', 'Growing professionally', 
'How to build a long-term plan for career success.', '');

 
INSERT INTO enrollments (user_id, course_id) VALUES
(6, 10),
(7, 6),
(8, 9),
(9, 8),
(10, 7);


INSERT INTO progress (enrollment_id, lesson_id, status, completed_at) VALUES
(8, 8, 'incomplete', NULL);


