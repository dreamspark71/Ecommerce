package com.gabenstore.dao;

import java.util.List;

import com.gabenstore.modal.Description;

public interface DescriptionDAO 
{
	public void addDescription(Description description);
	public List<Description> displayDescription();
	public void deteleDescription(int descriptionID);
	public Description updateDescription(int descriptionID);
}
