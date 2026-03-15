-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_membership_defaults/indexes/app_membership_defaults_created_by_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_membership_defaults/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_membership_defaults/columns/created_by/column


CREATE INDEX app_membership_defaults_created_by_idx ON "agent-os-1773550873753-b6c4a3e1-memberships-public".app_membership_defaults ( created_by );

