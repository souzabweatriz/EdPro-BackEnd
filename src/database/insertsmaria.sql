INSERT INTO users (photo, full_name, username, email, phone, password, role) VALUES
('/.fotodeperfil', 'Rodrigo Parma', 'rodrigoparma02', 'rodrigoparma@gmail.com', '19996661071', 'rodrigop02', 'professor'),
('/.fotodeperfil', 'Maria Silva', 'mariasilva', 'maria.silva@example.com', '11999990001', 'maria01', 'professor'),
('/.fotodeperfil', 'João Pereira', 'joaopereira', 'joao.pereira@example.com', '11999990002', 'joao02', 'professor'),
('/.fotodeperfil', 'Mariana Costa', 'marianacosta', 'mariana.costa@example.com', '21988880003', 'mariana03', 'professor'),
('/.fotodeperfil', 'Carlos Alberto', 'carlosalberto', 'carlos.alberto@example.com', '31977770004', 'carlos04', 'professor');

INSERT INTO users (photo, full_name, username, email, phone, password, role) VALUES
('/.fotodeperfil', 'Ana Souza', 'anasouza', 'anasouza@gmail.com', '41955551234', 'ana123', 'aluno'),
('/.fotodeperfil', 'Bruno Lima', 'brunolima', 'brunolima@gmail.com', '41955554321', 'bruno123', 'aluno'),
('/.fotodeperfil', 'Carla Mendes', 'carlamendes', 'carlamendes@gmail.com', '41955557654', 'carla123', 'aluno'),
('/.fotodeperfil', 'Daniel Ferreira', 'danielferreira', 'danielferreira@gmail.com', '41955559876', 'daniel123', 'aluno'),
('/.fotodeperfil', 'Elisa Gomes', 'elisagomes', 'elisagomes@gmail.com', '41955553421', 'elisa123', 'aluno');


INSERT INTO courses (owner_id, photo, title, description, category)
VALUES
(6, 'englishflow.jpg', 'English Flow: Professional Communication', 'A course designed to develop clear, objective, and professional communication skills in English for corporate environments.', 'Languages'),
(7, 'emotionclarity.jpg', 'Emotion & Clarity: Emotional Intelligence in Practice', 'A practical course focused on developing emotional intelligence, self-awareness, and clear communication in both personal and professional life.', 'Personal Development'),
(8, 'creativemind.jpg', 'Creative Mindset: Unlock Your Innovative Potential', 'A course focused on enhancing creativity, problem-solving, and innovation through practical exercises and real-world applications.', 'Personal Development'),
(9, 'leadershippath.jpg', 'Leadership Path: Inspiring Teams with Purpose', 'A leadership course designed to help students understand team dynamics, motivation strategies, and purpose-driven management.', 'Business'),
(10, 'digitalskills.jpg', 'Digital Skills Accelerator: Mastering Modern Tools', 'A practical course that teaches essential digital tools and technologies to improve productivity and performance in the modern workplace.', 'Technology');

INSERT INTO lessons (course_id, title, subtitle, content, media) VALUES
(6, 'Workplace Introductions', 'How to introduce yourself professionally in English', 'Learning how to introduce yourself in English is the first step to communicating with confidence in the workplace. In this lesson, students learn how to say their name, job position, and department, as well as greet colleagues and start conversations politely. Simple expressions like “Hello, my name is Maria. I work in the marketing department.” and “Nice to meet you, John! What do you do at the company?” help build natural and clear connections.', 'lesson1.jpg'),

(6, 'Professional Email Communication', 'Writing professional emails in English', 'Email communication is one of the most common forms of interaction in the corporate environment. In this lesson, students learn how to structure a professional email with appropriate greetings, a clear and objective body, and polite closings. Expressions like “Dear Mr. Smith, I hope this message finds you well.” and “Thank you for your time and attention.” demonstrate courtesy and help build strong professional relationships.', 'lesson2.jpg'),

(6, 'Office Vocabulary', 'Common workplace words and expressions', 'Mastering vocabulary used in corporate environments greatly improves daily communication. This lesson presents common words used in emails, meetings, and reports, such as meeting, deadline, boss, task, and report. Students learn to apply these terms in real sentences like “We have a meeting at 10 a.m.” and “The deadline for this project is next Friday.” to increase confidence when speaking or writing in English at work.', 'lesson3.jpg'),

(6, 'Meetings and Collaboration', 'How to participate in meetings in English', 'Participating in meetings in English requires clarity, active listening, and proper vocabulary. In this lesson, students learn expressions for agreeing, disagreeing, and presenting ideas politely. Phrases like “I agree with you.” and “That’s an interesting point, but I think…” help maintain a balanced and productive discussion. Students also learn how to start and end meetings naturally, with expressions like “Let’s move to the next point.” and “Thank you for your time.”', 'lesson4.jpg'),

(6, 'Customer Service Skills', 'How to assist customers in English', 'Handling customers in English is essential for businesses that deal with international clients. In this lesson, students learn practical phrases for greeting, offering help, and solving problems politely. Expressions like “How can I help you today?” and “I’m sorry for the inconvenience. Let me check that for you.” show empathy and professionalism. The focus is on clear, polite, and efficient communication that improves customer satisfaction.', 'lesson5.jpg'),

(6, 'Professional Presentations', 'How to make presentations in English', 'Speaking in public—especially in another language—can be challenging. This lesson teaches students how to structure a presentation in English with an introduction, development, and conclusion. Students learn useful phrases like “Good morning, everyone. Today I’m going to talk about our new project.” and closing expressions like “To sum up, these are the main points of our plan.” This lesson helps students organize ideas and present with confidence.', 'lesson6.jpg'),

(6, 'Telephone Communication', 'Answering and making calls with confidence', 'Answering phone calls in English requires attention and practice. In this lesson, students learn how to start conversations, transfer calls, and take messages clearly and politely. Useful expressions include “Good morning, Marketing Department. How can I help you?” and “Can I take a message?” Students also learn how to ask for repetition or clarification to avoid misunderstandings.', 'lesson7.jpg'),

(6, 'Everyday Work Expressions', 'Common daily expressions used in the workplace', 'In daily corporate life, there are many informal and useful expressions that make communication more natural. In this lesson, students learn phrases like “Let’s get started!”, “That’s a great idea!”, and “I’ll follow up with you tomorrow.” These expressions are useful in meetings, conversations with colleagues, and quick exchanges, helping students build fluency and spontaneity.', 'lesson8.jpg'),

(6, 'Feedback and Evaluation', 'How to give and receive feedback in English', 'Giving and receiving feedback is essential for professional growth. In this lesson, students learn expressions to offer constructive comments and respond politely and openly. Phrases like “I really appreciate your feedback.” and “Next time, I’ll try to improve this part.” show maturity and willingness to improve. The lesson reinforces the importance of maintaining a positive tone, even when addressing areas for improvement.', 'lesson9.jpg'),

(6, 'Cross-Cultural Communication', 'How to communicate effectively with people from different cultures', 'Understanding cultural differences is essential in global workplaces. In this lesson, students learn how to adapt their communication style, avoid misunderstandings, and show respect for diverse perspectives. Expressions like “Could you please clarify what you mean?” and “In my culture, we usually do it this way.” help create clearer and more inclusive interactions. The lesson focuses on building cultural awareness, empathy, and professional rapport in multinational environments.', 'lesson11.jpg'),


(6, 'Networking and Small Talk', 'How to socialize and build connections at work', 'Networking is an essential part of the modern corporate world. In this lesson, students learn how to start informal conversations, ask polite questions, and show genuine interest during professional events. Expressions like “It was nice meeting you. Let’s keep in touch.” and “Are you enjoying the event?” help build valuable connections and communicate naturally in social work situations.', 'lesson10.jpg');

INSERT INTO lessons (course_id, title, subtitle, content, media) VALUES
(7, 'Introduction to Emotional Intelligence', 'Understanding the foundations of EI', 
'In this lesson, students are introduced to the concept of Emotional Intelligence (EI) and why it is essential in both personal and professional life. They learn the five core components: self-awareness, self-regulation, motivation, empathy, and social skills.', 'ei_intro.jpg'),

(7, 'Self-Awareness', 'Recognizing your emotions and reactions', 
'Students explore how to identify their emotions and understand how feelings influence thoughts and behavior. The lesson includes reflection exercises and phrases such as “I am noticing that I feel anxious right now.” to help label emotions clearly.', 'self_awareness.jpg'),

(7, 'Self-Regulation', 'Managing emotions with clarity and balance', 
'This lesson teaches strategies to handle difficult emotions, avoid impulsive reactions, and maintain emotional balance. Students practice techniques such as breathing, reframing thoughts, and pausing before responding.', 'self_regulation.jpg'),

(7, 'Empathy in Practice', 'Understanding and connecting with others', 
'Students learn how to recognize other people’s emotions, listen actively, and respond with understanding. The lesson includes useful expressions like “I understand how you feel.” and “That sounds challenging, how can I help?”.', 'empathy.jpg'),

(7, 'Effective Communication', 'Expressing emotions with clarity and respect', 
'This lesson focuses on verbal and nonverbal communication skills that improve emotional clarity. Students learn how to express needs, set boundaries, and handle sensitive conversations using assertive language.', 'communication.jpg'),

(7, 'Managing Stress and Pressure', 'Developing emotional resilience at work', 
'Students explore how stress affects the body and mind, and learn techniques to stay calm in high-pressure situations. The lesson includes grounding practices, guided breathing, and practical workplace examples.', 'stress_management.jpg'),

(7, 'Conflict Resolution', 'Handling disagreements with emotional intelligence', 
'This lesson teaches how to address conflicts respectfully while maintaining emotional control. Students learn phrases like “Let’s try to find a solution together.” and techniques for staying calm and objective during disagreements.', 'conflict_resolution.jpg'),

(7, 'Building Healthy Relationships', 'Strengthening personal and professional connections', 
'Students discover how emotional intelligence enhances teamwork, trust, and collaboration. The lesson covers active listening, appreciation statements, and maintaining supportive interactions.', 'relationships.jpg'),

(7, 'Emotional Clarity in Decision-Making', 'Making thoughtful and balanced choices', 
'This lesson explores how emotions influence decision-making. Students learn methods to separate emotion from impulse, evaluate options clearly, and make decisions that align with long-term goals.', 'decision_making.jpg'),

(7, 'Personal Growth and EI Development', 'Creating a long-term emotional intelligence plan', 
'In the final lesson, students reflect on their progress and create a personal plan to continue improving emotional intelligence. Activities include goal-setting, journaling, and daily emotional check-ins.', 'ei_growth.jpg');

INSERT INTO lessons (course_id, title, subtitle, content, media) VALUES
(8, 'Introduction to Creative Thinking', 'Understanding how creativity works',
'In this lesson, students explore what creativity really means and how it can be developed. They learn the difference between divergent and convergent thinking, and how creative ideas emerge from curiosity and experimentation.', 'creative_intro.jpg'),

(8, 'Breaking Mental Barriers', 'Overcoming blocks and limiting beliefs',
'Students learn how to identify limiting beliefs that restrict innovation and how to replace them with empowering thoughts. The lesson includes mindset-shifting techniques and reflective exercises to unlock new perspectives.', 'mental_barriers.jpg'),

(8, 'Boosting Curiosity', 'Asking better questions to spark new ideas',
'This lesson focuses on the power of curiosity. Students practice techniques like the “Why?” chain, open-ended questioning, and perspective switching to generate original ideas and expand creative thinking.', 'curiosity.jpg'),

(8, 'Brainstorming Strategies', 'Generating ideas effectively',
'Students learn structured brainstorming methods such as mind mapping, rapid ideation, SCAMPER, and the 6 Thinking Hats. The lesson emphasizes quantity over quality at the initial stage and encourages creative freedom.', 'brainstorming.jpg'),

(8, 'Creative Problem-Solving', 'Innovative approaches to challenges',
'This lesson teaches students how to view problems from multiple angles and apply creative frameworks like design thinking. They learn to empathize with users, define problems clearly, prototype, and test new solutions.', 'problem_solving.jpg'),

(8, 'Innovation in Everyday Life', 'Applying creativity to real situations',
'Students discover how creativity is not limited to art—it appears in daily routines, workplace challenges, and personal decisions. The lesson includes practical examples and prompts to develop creative habits.', 'everyday_creativity.jpg'),

(8, 'Thinking Outside the Box', 'Developing unconventional and bold ideas',
'This lesson encourages students to challenge assumptions, break patterns, and explore unusual solutions. Techniques include random stimulation, analogies, and “What if…?” exploration.', 'outside_the_box.jpg'),

(8, 'Collaboration & Creativity', 'Creating innovative ideas as a team',
'Students learn how teamwork enhances creativity through diversity of thought. The lesson covers brainstorming etiquette, active listening, group synergy, and how to transform team discussions into innovative outcomes.', 'collaboration.jpg'),

(8, 'Creative Confidence', 'Building courage to share your ideas',
'This lesson focuses on overcoming fear of judgment, embracing mistakes, and building confidence to share creative ideas. Students practice positive self-talk and learn how to transform failures into growth.', 'creative_confidence.jpg'),

(8, 'Turning Ideas into Action', 'Transforming creativity into real projects',
'In the final lesson, students learn how to evaluate ideas, plan actionable steps, and bring creative projects to life. Topics include prioritization, prototyping, iteration, and maintaining creative discipline.', 'ideas_to_action.jpg');

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

INSERT INTO enrollments (user_id, course_id) VALUES
(6, 10),
(7, 6),
(8, 9),
(9, 8),
(10, 7);


INSERT INTO progress (enrollment_id, lesson_id, status, completed_at) VALUES
(8, 8, 'incomplete', NULL);


