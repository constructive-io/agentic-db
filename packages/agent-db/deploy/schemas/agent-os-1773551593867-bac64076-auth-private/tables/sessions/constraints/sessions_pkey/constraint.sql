-- Deploy: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/constraints/sessions_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/table


ALTER TABLE "agent-os-1773551593867-bac64076-auth-private".sessions 
  ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);

