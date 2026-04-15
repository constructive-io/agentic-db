-- Revert: schemas/agentic_db_storage_public/tables/files/grants/authenticated/update/grant


REVOKE UPDATE (description, tags, status) ON agentic_db_storage_public.files FROM authenticated;


