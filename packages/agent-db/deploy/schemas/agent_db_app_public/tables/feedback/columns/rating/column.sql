-- Deploy: schemas/agent_db_app_public/tables/feedback/columns/rating/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/feedback/table
-- requires: schemas/agent_db_app_public/tables/feedback/columns/target_id/alterations/alt0000001127


ALTER TABLE agent_db_app_public.feedback 
  ADD COLUMN rating int;

