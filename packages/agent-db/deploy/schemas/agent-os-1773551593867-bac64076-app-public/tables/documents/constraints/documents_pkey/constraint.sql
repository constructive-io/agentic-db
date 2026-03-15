-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/documents/constraints/documents_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/documents/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/expenses/columns/tags/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".documents 
  ADD CONSTRAINT documents_pkey PRIMARY KEY (id);

