%make full set of trial tables for AB imitation

%trial table: 
%trialType item showcontext context contextdur srdur trdur practice
% trialType: 	Flag for trial type ( 0 = FreeStream
%                              Mless: 1 = Mless, 2 = MlessAwkward, 3 = MlessStatic; 
%                               Mful: 4 = Mful,  5 = MfulAwkward,  6 = MfulStatic,   7 = Named)
% item:         item number, corresonding to a video file
% showcontext:	flag to show context or not (-1 = hide, 0 = play a number, 1 = show dynamic, 2 = show static)
% context:      context number (audio and/or picture and/or text) (>=0 = context number and show, < 0 = do not show)
% contextdur:   duration to show context (if -2, do context simultaneous with video playback; if -1, wait until done)
% srdur:        duration to wait after video playback before go cue (stim-response delay duration)
% trdur:        trial duration (max movement time)
% practice:     flag if the block is a practice block or not (changes the instructions disiplayed at the start of the block)

curdir = cd;
cd ../TrialTables


%--------------------------------------------------------------------------

%Practice Unnamed Meaningful
fid = fopen('P_Unnamed_Mful.txt','wt');
fprintf(fid,'4 13 0 1 -1 2000 10000 1\n');
fprintf(fid,'4 14 0 2 -1 2000 10000 1\n');
fclose(fid);


%Unnamed Meaningful
fid = fopen('Unnamed_Mful.txt','wt');
for a = 1:12
    fprintf(fid,'4 %d 0 %d -1 2000 10000 0\n',a,a);
end
fclose(fid);

%--------------------------------------------------------------------------

%Meaningless
fid = fopen('Mless.txt','wt');
for a = 1:14
    fprintf(fid,'1 %d 0 %d -1 2000 10000 0\n',a,a);
end
fclose(fid);

%--------------------------------------------------------------------------

%NOTE: TrialType=4 with Context=1 is Named Mful *BUT* the instructions will be wrong! 
%      Instead, Use Mful=7 for Named Mful.

%Practice Named Meaningful
fid = fopen('P_Named_Mful.txt','wt');
fprintf(fid,'7 13 1 13 -1 2000 10000 1\n');
fprintf(fid,'7 14 1 14 -1 2000 10000 1\n');
fclose(fid);


%Named Meaningful
fid = fopen('Named_Mful.txt','wt');
for a = 1:12
    fprintf(fid,'7 %d 1 %d -1 2000 10000 0\n',a,a);
end
fclose(fid);

%--------------------------------------------------------------------------

%Practice Awkward Meaningless
fid = fopen('P_Awk_Mless.txt','wt');
fprintf(fid,'2 5 0 1 -1 2000 10000 1\n');
fprintf(fid,'2 6 0 2 -1 2000 10000 1\n');
fclose(fid);

%Awkward Meaningless
fid = fopen('Awk_Mless.txt','wt');
for a = 1:4
    fprintf(fid,'2 %d 0 %d -1 2000 10000 0\n',a,a);
end
fclose(fid);

%--------------------------------------------------------------------------

%Practice Named Awkward Meaningful
fid = fopen('P_Awk_Mful.txt','wt');
fprintf(fid,'5 5 1 14 -1 2000 10000 1\n');
fprintf(fid,'5 6 1 13 -1 2000 10000 1\n');
fclose(fid);

%Named Awkward Meaningful
fid = fopen('Awk_Mful.txt','wt');
fprintf(fid,'5 1 1 1 -1 2000 10000 0\n');
fprintf(fid,'5 2 1 2 -1 2000 10000 0\n');
fprintf(fid,'5 3 1 7 -1 2000 10000 0\n');
fprintf(fid,'5 4 1 8 -1 2000 10000 0\n');
%for a = 1:4
%end
fclose(fid);

%--------------------------------------------------------------------------

%Static Meaningless
fid = fopen('Static_Mless.txt','wt');
for a = 1:10
    fprintf(fid,'3 %d 0 %d -1 2000 10000 0\n',a,a);
end
fclose(fid);

%--------------------------------------------------------------------------

%Static Meaningful
fid = fopen('Static_Mful.txt','wt');
for a = 1:10
    fprintf(fid,'6 %d 2 %d -1 2000 10000 0\n',a,a);
end
fclose(fid);
