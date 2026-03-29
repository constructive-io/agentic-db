-- Deploy: schemas/agentic_db_user_identifiers_public/tables/emails/columns/from_contact_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_user_identifiers_public/tables/emails/table
-- requires: schemas/agentic_db_app_public/tables/activity_logs/indexes/activity_logs_habit_id_idx


ALTER TABLE agentic_db_user_identifiers_public.emails 
  ADD COLUMN from_contact_id uuid;

