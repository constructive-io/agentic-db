-- Revert: schemas/agentic_db_app_public/tables/conversations/columns/status/alterations/alt0000006085




ALTER TABLE agentic_db_app_public.conversations 
    ALTER COLUMN status DROP DEFAULT;



