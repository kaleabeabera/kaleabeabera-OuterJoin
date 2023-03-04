SELECT c.class_title, c.teacher_name, s.student_name, t.textbook_title
FROM class c
LEFT JOIN student s ON c.class_title = s.class_title
LEFT JOIN textbook t ON c.class_title = t.class_title
WHERE s.student_name IS NOT NULL OR t.textbook_title IS NOT NULL
ORDER BY c.class_title, c.teacher_name, s.student_name;