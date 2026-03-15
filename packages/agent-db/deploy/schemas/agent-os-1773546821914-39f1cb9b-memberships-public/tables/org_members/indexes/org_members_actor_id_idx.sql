-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_members/indexes/org_members_actor_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_members/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_members/columns/actor_id/column


CREATE INDEX org_members_actor_id_idx ON "agent-os-1773546821914-39f1cb9b-memberships-public".org_members USING BTREE ( actor_id );

