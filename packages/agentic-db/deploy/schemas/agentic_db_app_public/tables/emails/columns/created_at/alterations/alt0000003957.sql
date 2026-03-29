-- Deploy: schemas/agentic_db_app_public/tables/emails/columns/created_at/alterations/alt0000003957
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/emails/table
-- requires: schemas/agentic_db_app_public/tables/emails/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx



ALTER TABLE agentic_db_app_public.emails 
    ALTER COLUMN created_at SET DEFAULT now();

