-- Revert: schemas/agentic_db_app_public/tables/contacts/columns/created_at/alterations/alt0000003396




ALTER TABLE agentic_db_app_public.contacts 
    ALTER COLUMN created_at DROP DEFAULT;



