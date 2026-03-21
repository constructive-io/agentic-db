-- Revert: schemas/agentic_db_app_public/tables/template_chunks/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_app_public.template_chunks FROM authenticated;


