-- Deploy: schemas/agentic_db_app_public/tables/skills/alterations/alt0000003647
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skills/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


ALTER TABLE agentic_db_app_public.skills 
  DISABLE ROW LEVEL SECURITY;

