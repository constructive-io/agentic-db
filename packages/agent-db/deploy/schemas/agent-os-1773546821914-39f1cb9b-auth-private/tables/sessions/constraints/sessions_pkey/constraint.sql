-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/sessions/constraints/sessions_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/sessions/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-auth-private".sessions 
  ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);

