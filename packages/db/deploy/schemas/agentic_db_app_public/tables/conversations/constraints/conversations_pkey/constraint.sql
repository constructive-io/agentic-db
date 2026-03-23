-- Deploy: schemas/agentic_db_app_public/tables/conversations/constraints/conversations_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/conversations/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx


ALTER TABLE "agentic_db_app_public".conversations 
  ADD CONSTRAINT conversations_pkey PRIMARY KEY (id);

