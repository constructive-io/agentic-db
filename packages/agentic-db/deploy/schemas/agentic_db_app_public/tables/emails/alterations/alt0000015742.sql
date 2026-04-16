-- Deploy: schemas/agentic_db_app_public/tables/emails/alterations/alt0000015742
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/emails/table
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx


ALTER TABLE agentic_db_app_public.emails 
  DISABLE ROW LEVEL SECURITY;

