-- Deploy: schemas/agentic_db_app_public/tables/goal_habits/alterations/alt0000015955
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goal_habits/table
-- requires: schemas/agentic_db_app_public/tables/calendar_attendees/indexes/calendar_attendees_contact_id_idx


ALTER TABLE agentic_db_app_public.goal_habits 
  DISABLE ROW LEVEL SECURITY;

