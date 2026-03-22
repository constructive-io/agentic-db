-- Deploy: schemas/agentic_db_app_public/tables/agent_collaborators/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_collaborators/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx


GRANT SELECT ON agentic_db_app_public.agent_collaborators TO authenticated;

