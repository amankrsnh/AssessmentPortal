CREATE DATABASE quizapp;
USE quizapp;
CREATE TABLE `questions` (
  `qno` int NOT NULL,
  `question` varchar(500) DEFAULT NULL,
  `option1` varchar(50) DEFAULT NULL,
  `option2` varchar(50) DEFAULT NULL,
  `option3` varchar(50) DEFAULT NULL,
  `option4` varchar(50) DEFAULT NULL,
  `correctoption` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`qno`));
INSERT INTO `quizapp`.`questions`
(`qno`,
`question`,
`option1`,
`option2`,
`option3`,
`option4`,
`correctoption`)
VALUES
(1,"Which of the following is another name for a command interpreter?","prompt","kernel","shell","command","shell"),
(2,"What is the full form of FAT?","File Attribute Table","File Allocation Table","Font Attribute Table","Format Allocation Table","File Allocation Table"),
(3,"Which of the following is an example of a single-user operating system?","Windows","MAC","MS-DOS","None of these","MS-DOS"),
(4,"The size of the virtual memory is based on which of the following?","CPU","RAM","Address Bus","Data Bus","Address Bus"),
(5,"Which of the following is not an application software?","Windows 7","WordPad","Photoshop","MS-Excel","Windows 7"),
(6,"Which of the following operating systems does not support more than one program at a time?","Linux","Windows","MAC","DOS","DOS"),
(7,"Which of the following provides the interface to access the services of an operating system?","API","System Call","Library","Assembly Instruction","System Call"),
(8,"Which program runs first after booting the computer and loading the GUI?","Desktop Manager","File Manager","Windows Explorer","Authentication","Authentication"),
(9,"The Basic Input Output System (BIOS) resides in?","RAM","ROM","CPU","Cache Memory","ROM"),
(10,"Which of the following cannot be scheduled by the kernel?","Kernel level thread","User level thread","Process","None of the above","User level thread"),
(11,"An operating system is a collection of","Software routines","Input-Output devices","Hardware components","All of the above","Software routines"),
(12,"Which of the following software is used to simplify the usage of system software?","Time sharing","Multi-tasking","Spreadsheet","Operating environment","Time sharing"),
(13,"The operating system resides in which part of the memory?","Middle","Lower","Upper","None of these","Upper"),
(14,"While working with MS-DOS, which command transfers a specific file from one disk to another?","diskcopy","copy","time","rename","copy"),
(15,"Restarting a running computer is called","Normal boot","Cold boot","Cool boot","Warm boot","Warm boot"),
(16,"A 'memory resident command' refers to","Wild Cards","Pipes","Internal Command","External Command","Internal Command"),
(17,"The state transition initiated by the user process itself in an operating system is","Timer run out","Wake up","Dispatch","Block","Block"),
(18,"Which one of the following programs compresses large files into smaller ones?","WinZip","WinShrink","WinStyle","None of the above","WinZip"),
(19,"Which operating system doesn't support networking between computers?","Windows 3.1","Windows 95","Windows 2000","Windows NT","Windows 3.1"),
(20,"Which of the following is not a system tool?","Backup","Disk Defragment","Virus Scanning","All of the above","Virus Scanning"),
(21,"The memory which allocates space for DOS and application is called","Expanded memory","Cache memory","Virtual memory","Conventional memory","Conventional memory"),
(22,"Which mode loads minimal set of drivers when starting Windows?","Safe mode","Normal mode","VGA mode","Network Support mode","Safe mode"),
(23,"Which Windows feature represents the ability of a computer to automatically configure a new hardware component?","Auto Detect","Plug and Play","Add/Remove hardware","None of these","Plug and Play"),
(24,"The principle of locality of reference justifies the use of","Non-reusable memory","Virtual memory","Cache memory","None of the above","Cache memory"),
(25,"A compiler for a high-level language, that runs on one machine and produces code for a different machine is called","One-pass compiler","Cross compiler","Multi-pass compiler","Optimizing compiler","Cross compiler"),
(26,"Which of the following is a measure to test how good or bad a modular design is?","Module strength","Module coupling","Static analysis","All of the above","Module strength"),
(27,"Which of the following is/are external commands?","label","edit","sys","All of the above","All of the above"),
(28,"When a peripheral device needs immediate attention from the operating system, it generates a/an","Interrupt","Spool","Stack","Page File","Interrupt"),
(29,"Which of the following is a disk compression tool?","Drive Space","Defragmenter","Scandisk","None of the above","Drive Space"),
(30,"Which of the following is a database of information about the Windows Operating System including customized settings and software installations?","Registry","Changelog","Performance Monitor","None of the above","Registry");
