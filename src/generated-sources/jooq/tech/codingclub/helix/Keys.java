/**
 * This class is generated by jOOQ
 */
package tech.codingclub.helix;

/**
 * This class is generated by jOOQ.
 *
 * A class modelling foreign key relationships between tables of the <code>public</code> 
 * schema
 */
@javax.annotation.Generated(value    = { "http://www.jooq.org", "3.3.2" },
                            comments = "This class is generated by jOOQ")
@java.lang.SuppressWarnings({ "all", "unchecked", "rawtypes" })
public class Keys {

	// -------------------------------------------------------------------------
	// IDENTITY definitions
	// -------------------------------------------------------------------------

	public static final org.jooq.Identity<tech.codingclub.helix.tables.records.CustomerRecord, java.lang.Long> IDENTITY_CUSTOMER = Identities0.IDENTITY_CUSTOMER;
	public static final org.jooq.Identity<tech.codingclub.helix.tables.records.MemberRecord, java.lang.Long> IDENTITY_MEMBER = Identities0.IDENTITY_MEMBER;
	public static final org.jooq.Identity<tech.codingclub.helix.tables.records.ProductRecord, java.lang.Long> IDENTITY_PRODUCT = Identities0.IDENTITY_PRODUCT;
	public static final org.jooq.Identity<tech.codingclub.helix.tables.records.TweetRecord, java.lang.Long> IDENTITY_TWEET = Identities0.IDENTITY_TWEET;

	// -------------------------------------------------------------------------
	// UNIQUE and PRIMARY KEY definitions
	// -------------------------------------------------------------------------

	public static final org.jooq.UniqueKey<tech.codingclub.helix.tables.records.CartRecord> CART_USER_ID_PRODUCT_ID_KEY = UniqueKeys0.CART_USER_ID_PRODUCT_ID_KEY;
	public static final org.jooq.UniqueKey<tech.codingclub.helix.tables.records.CustomerRecord> CUSTOMER_PKEY = UniqueKeys0.CUSTOMER_PKEY;
	public static final org.jooq.UniqueKey<tech.codingclub.helix.tables.records.FollowerRecord> FOLLOWER_USER_ID_FOLLOWING_ID_KEY = UniqueKeys0.FOLLOWER_USER_ID_FOLLOWING_ID_KEY;
	public static final org.jooq.UniqueKey<tech.codingclub.helix.tables.records.MemberRecord> ID = UniqueKeys0.ID;
	public static final org.jooq.UniqueKey<tech.codingclub.helix.tables.records.ProductRecord> PRODUCT_PKEY = UniqueKeys0.PRODUCT_PKEY;

	// -------------------------------------------------------------------------
	// FOREIGN KEY definitions
	// -------------------------------------------------------------------------

	public static final org.jooq.ForeignKey<tech.codingclub.helix.tables.records.CartRecord, tech.codingclub.helix.tables.records.MemberRecord> CART__USER_ID = ForeignKeys0.CART__USER_ID;
	public static final org.jooq.ForeignKey<tech.codingclub.helix.tables.records.CartRecord, tech.codingclub.helix.tables.records.ProductRecord> CART__PRODUCT_ID = ForeignKeys0.CART__PRODUCT_ID;
	public static final org.jooq.ForeignKey<tech.codingclub.helix.tables.records.FollowerRecord, tech.codingclub.helix.tables.records.MemberRecord> FOLLOWER__USER_ID = ForeignKeys0.FOLLOWER__USER_ID;
	public static final org.jooq.ForeignKey<tech.codingclub.helix.tables.records.FollowerRecord, tech.codingclub.helix.tables.records.MemberRecord> FOLLOWER__FOLLOWING_ID = ForeignKeys0.FOLLOWER__FOLLOWING_ID;

	// -------------------------------------------------------------------------
	// [#1459] distribute members to avoid static initialisers > 64kb
	// -------------------------------------------------------------------------

	private static class Identities0 extends org.jooq.impl.AbstractKeys {
		public static org.jooq.Identity<tech.codingclub.helix.tables.records.CustomerRecord, java.lang.Long> IDENTITY_CUSTOMER = createIdentity(tech.codingclub.helix.tables.Customer.CUSTOMER, tech.codingclub.helix.tables.Customer.CUSTOMER.ID);
		public static org.jooq.Identity<tech.codingclub.helix.tables.records.MemberRecord, java.lang.Long> IDENTITY_MEMBER = createIdentity(tech.codingclub.helix.tables.Member.MEMBER, tech.codingclub.helix.tables.Member.MEMBER.ID);
		public static org.jooq.Identity<tech.codingclub.helix.tables.records.ProductRecord, java.lang.Long> IDENTITY_PRODUCT = createIdentity(tech.codingclub.helix.tables.Product.PRODUCT, tech.codingclub.helix.tables.Product.PRODUCT.ID);
		public static org.jooq.Identity<tech.codingclub.helix.tables.records.TweetRecord, java.lang.Long> IDENTITY_TWEET = createIdentity(tech.codingclub.helix.tables.Tweet.TWEET, tech.codingclub.helix.tables.Tweet.TWEET.ID);
	}

	private static class UniqueKeys0 extends org.jooq.impl.AbstractKeys {
		public static final org.jooq.UniqueKey<tech.codingclub.helix.tables.records.CartRecord> CART_USER_ID_PRODUCT_ID_KEY = createUniqueKey(tech.codingclub.helix.tables.Cart.CART, tech.codingclub.helix.tables.Cart.CART.USER_ID, tech.codingclub.helix.tables.Cart.CART.PRODUCT_ID);
		public static final org.jooq.UniqueKey<tech.codingclub.helix.tables.records.CustomerRecord> CUSTOMER_PKEY = createUniqueKey(tech.codingclub.helix.tables.Customer.CUSTOMER, tech.codingclub.helix.tables.Customer.CUSTOMER.ID);
		public static final org.jooq.UniqueKey<tech.codingclub.helix.tables.records.FollowerRecord> FOLLOWER_USER_ID_FOLLOWING_ID_KEY = createUniqueKey(tech.codingclub.helix.tables.Follower.FOLLOWER, tech.codingclub.helix.tables.Follower.FOLLOWER.USER_ID, tech.codingclub.helix.tables.Follower.FOLLOWER.FOLLOWING_ID);
		public static final org.jooq.UniqueKey<tech.codingclub.helix.tables.records.MemberRecord> ID = createUniqueKey(tech.codingclub.helix.tables.Member.MEMBER, tech.codingclub.helix.tables.Member.MEMBER.ID);
		public static final org.jooq.UniqueKey<tech.codingclub.helix.tables.records.ProductRecord> PRODUCT_PKEY = createUniqueKey(tech.codingclub.helix.tables.Product.PRODUCT, tech.codingclub.helix.tables.Product.PRODUCT.ID);
	}

	private static class ForeignKeys0 extends org.jooq.impl.AbstractKeys {
		public static final org.jooq.ForeignKey<tech.codingclub.helix.tables.records.CartRecord, tech.codingclub.helix.tables.records.MemberRecord> CART__USER_ID = createForeignKey(tech.codingclub.helix.Keys.ID, tech.codingclub.helix.tables.Cart.CART, tech.codingclub.helix.tables.Cart.CART.USER_ID, tech.codingclub.helix.tables.Cart.CART.USER_ID);
		public static final org.jooq.ForeignKey<tech.codingclub.helix.tables.records.CartRecord, tech.codingclub.helix.tables.records.ProductRecord> CART__PRODUCT_ID = createForeignKey(tech.codingclub.helix.Keys.PRODUCT_PKEY, tech.codingclub.helix.tables.Cart.CART, tech.codingclub.helix.tables.Cart.CART.PRODUCT_ID);
		public static final org.jooq.ForeignKey<tech.codingclub.helix.tables.records.FollowerRecord, tech.codingclub.helix.tables.records.MemberRecord> FOLLOWER__USER_ID = createForeignKey(tech.codingclub.helix.Keys.ID, tech.codingclub.helix.tables.Follower.FOLLOWER, tech.codingclub.helix.tables.Follower.FOLLOWER.USER_ID, tech.codingclub.helix.tables.Follower.FOLLOWER.USER_ID);
		public static final org.jooq.ForeignKey<tech.codingclub.helix.tables.records.FollowerRecord, tech.codingclub.helix.tables.records.MemberRecord> FOLLOWER__FOLLOWING_ID = createForeignKey(tech.codingclub.helix.Keys.ID, tech.codingclub.helix.tables.Follower.FOLLOWER, tech.codingclub.helix.tables.Follower.FOLLOWER.FOLLOWING_ID);
	}
}
