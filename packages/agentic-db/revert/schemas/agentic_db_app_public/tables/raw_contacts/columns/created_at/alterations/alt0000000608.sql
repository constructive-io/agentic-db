-- Revert: schemas/agentic_db_app_public/tables/raw_contacts/columns/created_at/alterations/alt0000000608




ALTER TABLE agentic_db_app_public.raw_contacts 
    ALTER COLUMN created_at DROP DEFAULT;



