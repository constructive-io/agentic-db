-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-simple-secrets/tables/secrets/constraints/secrets_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-simple-secrets/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-simple-secrets/tables/secrets/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-simple-secrets".secrets 
  ADD CONSTRAINT secrets_pkey PRIMARY KEY (id);

