INSERT INTO users (photo, full_name, username, email, phone, password, role) VALUES
( '/.fotodeperfil', 'Rodrigo Parma', 'rodrigoparma02', 'rodrigoparma@gmail.com', '19996661071', 'rodrigop02', 'professor' ),
( '/.fotodeperfil', 'Maria Silva', 'mariasilva', 'maria.silva@example.com', '11999990001', 'maria01', 'professor' ),
( '/.fotodeperfil', 'João Pereira', 'joaopereira', 'joao.pereira@example.com', '11999990002', 'joao02', 'professor' ),
( '/.fotodeperfil', 'Mariana Costa', 'marianacosta', 'mariana.costa@example.com', '21988880003', 'mariana03', 'professor' ),
( '/.fotodeperfil', 'Carlos Alberto', 'carlosalberto', 'carlos.alberto@example.com', '31977770004', 'carlos04', 'professor' );

INSERT INTO users (photo, full_name, username, email, phone, password, role) VALUES
( '/.fotodeperfil', 'Ana Souza', 'anasouza', 'anasouza@gmail.com', '41955551234', 'ana123', 'aluno' ),
( '/.fotodeperfil', 'Bruno Lima', 'brunolima', 'brunolima@gmail.com', '41955554321', 'bruno123', 'aluno' ),
( '/.fotodeperfil', 'Carla Mendes', 'carlamendes', 'carlamendes@gmail.com', '41955557654', 'carla123', 'aluno' )
( '/.fotodeperfil', 'Daniel Ferreira', 'danielferreira', 'danielferreira', '41955559876', 'daniel123', 'aluno' )
( '/.fotodeperfil', 'Elisa Gomes', 'elisagomes', 'elisagomes@gmail.com', '41955553421', 'elisa123', 'aluno' );

INSERT INTO courses (owner_id, photo, title, description, category)
VALUES
(1, 'englishflow.jpg', 'English Flow: Professional Communication', 'A course designed to develop clear, objective, and professional communication skills in English for corporate environments.', 'Languages'),
(2, 'emotionclarity.jpg', 'Emotion & Clarity: Emotional Intelligence in Practice', 'A practical course focused on developing emotional intelligence, self-awareness, and clear communication in both personal and professional life.', 'Personal Development'),
(3, 'creativemind.jpg', 'Creative Mindset: Unlock Your Innovative Potential', 'A course focused on enhancing creativity, problem-solving, and innovation through practical exercises and real-world applications.', 'Personal Development'),
(4, 'leadershippath.jpg', 'Leadership Path: Inspiring Teams with Purpose', 'A leadership course designed to help students understand team dynamics, motivation strategies, and purpose-driven management.', 'Business'),
(5, 'digitalskills.jpg', 'Digital Skills Accelerator: Mastering Modern Tools', 'A practical course that teaches essential digital tools and technologies to improve productivity and performance in the modern workplace.', 'Technology');

INSERT INTO lessons (course_id, title, subtitle, content, media) VALUES
(1, 'Workplace Introductions', 'How to introduce yourself professionally in English', 'Learning how to introduce yourself in English is the first step to communicating with confidence in the workplace. In this lesson, students learn how to say their name, job position, and department, as well as greet colleagues and start conversations politely. Simple expressions like “Hello, my name is Maria. I work in the marketing department.” and “Nice to meet you, John! What do you do at the company?” help build natural and clear connections.', 'lesson1.jpg'),

(1, 'Professional Email Communication', 'Writing professional emails in English', 'Email communication is one of the most common forms of interaction in the corporate environment. In this lesson, students learn how to structure a professional email with appropriate greetings, a clear and objective body, and polite closings. Expressions like “Dear Mr. Smith, I hope this message finds you well.” and “Thank you for your time and attention.” demonstrate courtesy and help build strong professional relationships.', 'lesson2.jpg'),

(1, 'Office Vocabulary', 'Common workplace words and expressions', 'Mastering vocabulary used in corporate environments greatly improves daily communication. This lesson presents common words used in emails, meetings, and reports, such as meeting, deadline, boss, task, and report. Students learn to apply these terms in real sentences like “We have a meeting at 10 a.m.” and “The deadline for this project is next Friday.” to increase confidence when speaking or writing in English at work.', 'lesson3.jpg'),

(1, 'Meetings and Collaboration', 'How to participate in meetings in English', 'Participating in meetings in English requires clarity, active listening, and proper vocabulary. In this lesson, students learn expressions for agreeing, disagreeing, and presenting ideas politely. Phrases like “I agree with you.” and “That’s an interesting point, but I think…” help maintain a balanced and productive discussion. Students also learn how to start and end meetings naturally, with expressions like “Let’s move to the next point.” and “Thank you for your time.”', 'lesson4.jpg'),

(1, 'Customer Service Skills', 'How to assist customers in English', 'Handling customers in English is essential for businesses that deal with international clients. In this lesson, students learn practical phrases for greeting, offering help, and solving problems politely. Expressions like “How can I help you today?” and “I’m sorry for the inconvenience. Let me check that for you.” show empathy and professionalism. The focus is on clear, polite, and efficient communication that improves customer satisfaction.', 'lesson5.jpg'),

(1, 'Professional Presentations', 'How to make presentations in English', 'Speaking in public—especially in another language—can be challenging. This lesson teaches students how to structure a presentation in English with an introduction, development, and conclusion. Students learn useful phrases like “Good morning, everyone. Today I’m going to talk about our new project.” and closing expressions like “To sum up, these are the main points of our plan.” This lesson helps students organize ideas and present with confidence.', 'lesson6.jpg'),

(1, 'Telephone Communication', 'Answering and making calls with confidence', 'Answering phone calls in English requires attention and practice. In this lesson, students learn how to start conversations, transfer calls, and take messages clearly and politely. Useful expressions include “Good morning, Marketing Department. How can I help you?” and “Can I take a message?” Students also learn how to ask for repetition or clarification to avoid misunderstandings.', 'lesson7.jpg'),

(1, 'Everyday Work Expressions', 'Common daily expressions used in the workplace', 'In daily corporate life, there are many informal and useful expressions that make communication more natural. In this lesson, students learn phrases like “Let’s get started!”, “That’s a great idea!”, and “I’ll follow up with you tomorrow.” These expressions are useful in meetings, conversations with colleagues, and quick exchanges, helping students build fluency and spontaneity.', 'lesson8.jpg'),

(1, 'Feedback and Evaluation', 'How to give and receive feedback in English', 'Giving and receiving feedback is essential for professional growth. In this lesson, students learn expressions to offer constructive comments and respond politely and openly. Phrases like “I really appreciate your feedback.” and “Next time, I’ll try to improve this part.” show maturity and willingness to improve. The lesson reinforces the importance of maintaining a positive tone, even when addressing areas for improvement.', 'lesson9.jpg'),

(1, 'Cross-Cultural Communication', 'How to communicate effectively with people from different cultures', 'Understanding cultural differences is essential in global workplaces. In this lesson, students learn how to adapt their communication style, avoid misunderstandings, and show respect for diverse perspectives. Expressions like “Could you please clarify what you mean?” and “In my culture, we usually do it this way.” help create clearer and more inclusive interactions. The lesson focuses on building cultural awareness, empathy, and professional rapport in multinational environments.', 'lesson11.jpg'),


(1, 'Networking and Small Talk', 'How to socialize and build connections at work', 'Networking is an essential part of the modern corporate world. In this lesson, students learn how to start informal conversations, ask polite questions, and show genuine interest during professional events. Expressions like “It was nice meeting you. Let’s keep in touch.” and “Are you enjoying the event?” help build valuable connections and communicate naturally in social work situations.', 'lesson10.jpg');

INSERT INTO lessons (course_id, title, subtitle, content, media) VALUES
(2, 'Introduction to Emotional Intelligence', 'Understanding the foundations of EI', 
'In this lesson, students are introduced to the concept of Emotional Intelligence (EI) and why it is essential in both personal and professional life. They learn the five core components: self-awareness, self-regulation, motivation, empathy, and social skills.', 'ei_intro.jpg'),

(2, 'Self-Awareness', 'Recognizing your emotions and reactions', 
'Students explore how to identify their emotions and understand how feelings influence thoughts and behavior. The lesson includes reflection exercises and phrases such as “I am noticing that I feel anxious right now.” to help label emotions clearly.', 'self_awareness.jpg'),

(2, 'Self-Regulation', 'Managing emotions with clarity and balance', 
'This lesson teaches strategies to handle difficult emotions, avoid impulsive reactions, and maintain emotional balance. Students practice techniques such as breathing, reframing thoughts, and pausing before responding.', 'self_regulation.jpg'),

(2, 'Empathy in Practice', 'Understanding and connecting with others', 
'Students learn how to recognize other people’s emotions, listen actively, and respond with understanding. The lesson includes useful expressions like “I understand how you feel.” and “That sounds challenging, how can I help?”.', 'empathy.jpg'),

(2, 'Effective Communication', 'Expressing emotions with clarity and respect', 
'This lesson focuses on verbal and nonverbal communication skills that improve emotional clarity. Students learn how to express needs, set boundaries, and handle sensitive conversations using assertive language.', 'communication.jpg'),

(2, 'Managing Stress and Pressure', 'Developing emotional resilience at work', 
'Students explore how stress affects the body and mind, and learn techniques to stay calm in high-pressure situations. The lesson includes grounding practices, guided breathing, and practical workplace examples.', 'stress_management.jpg'),

(2, 'Conflict Resolution', 'Handling disagreements with emotional intelligence', 
'This lesson teaches how to address conflicts respectfully while maintaining emotional control. Students learn phrases like “Let’s try to find a solution together.” and techniques for staying calm and objective during disagreements.', 'conflict_resolution.jpg'),

(2, 'Building Healthy Relationships', 'Strengthening personal and professional connections', 
'Students discover how emotional intelligence enhances teamwork, trust, and collaboration. The lesson covers active listening, appreciation statements, and maintaining supportive interactions.', 'relationships.jpg'),

(2, 'Emotional Clarity in Decision-Making', 'Making thoughtful and balanced choices', 
'This lesson explores how emotions influence decision-making. Students learn methods to separate emotion from impulse, evaluate options clearly, and make decisions that align with long-term goals.', 'decision_making.jpg'),

(2, 'Personal Growth and EI Development', 'Creating a long-term emotional intelligence plan', 
'In the final lesson, students reflect on their progress and create a personal plan to continue improving emotional intelligence. Activities include goal-setting, journaling, and daily emotional check-ins.', 'ei_growth.jpg');

