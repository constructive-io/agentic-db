-- Deploy: schemas/agentic_db_app_public/tables/rules/alterations/alt0000001103
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rules/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


ALTER TABLE "agentic_db_app_public".rules 
  DISABLE ROW LEVEL SECURITY;

