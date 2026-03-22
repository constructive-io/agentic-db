-- Deploy: schemas/agentic_db_app_public/tables/venues/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venues/table
-- requires: schemas/agentic_db_app_public/tables/events/alterations/alt0000005587


ALTER TABLE agentic_db_app_public.venues 
  ENABLE ROW LEVEL SECURITY;

