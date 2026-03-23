-- Deploy: schemas/agentic_db_app_public/tables/agent_collaborators/indexes/agent_collaborators_agent_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_collaborators/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx
-- requires: schemas/agentic_db_app_public/tables/agent_collaborators/columns/agent_id/column


CREATE INDEX agent_collaborators_agent_id_idx ON "agentic_db_app_public".agent_collaborators USING BTREE ( agent_id );

