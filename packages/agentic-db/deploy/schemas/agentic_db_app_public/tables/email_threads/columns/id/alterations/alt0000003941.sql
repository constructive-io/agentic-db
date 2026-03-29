-- Deploy: schemas/agentic_db_app_public/tables/email_threads/columns/id/alterations/alt0000003941
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_threads/table
-- requires: schemas/agentic_db_app_public/tables/email_threads/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx



ALTER TABLE agentic_db_app_public.email_threads 
    ALTER COLUMN id SET DEFAULT uuidv7();

