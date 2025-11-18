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


