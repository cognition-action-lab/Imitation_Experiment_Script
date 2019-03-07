#ifndef TGTFRAME_H
#define TGTFRAME_H
#pragma once

// Data type used to store trial data for data writer
struct TargetFrame
{
	int trial;
	int redo;
	double starttime;

	int item;
	int trace;
	int instruct;
	int showcontext;
	int context;
	int vidstatus;

	int TrType;

	char key;

	int lat;
	int dur;

};

#endif
