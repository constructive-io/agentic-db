-- Revert: schemas/agentic_db_app_public/tables/raw_contact_phones/columns/updated_at/alterations/alt0000004077




ALTER TABLE agentic_db_app_public.raw_contact_phones 
    ALTER COLUMN updated_at DROP DEFAULT;



