-- Revert: schemas/agentic_db_app_public/tables/integrations/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_app_public.integrations FROM authenticated;


