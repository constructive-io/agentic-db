-- Revert: schemas/agentic_db_app_public/tables/contact_addresses/columns/created_at/alterations/alt0000013070




ALTER TABLE agentic_db_app_public.contact_addresses 
    ALTER COLUMN created_at DROP DEFAULT;



