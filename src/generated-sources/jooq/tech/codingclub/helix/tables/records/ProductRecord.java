/**
 * This class is generated by jOOQ
 */
package tech.codingclub.helix.tables.records;

/**
 * This class is generated by jOOQ.
 */
@javax.annotation.Generated(value    = { "http://www.jooq.org", "3.3.2" },
                            comments = "This class is generated by jOOQ")
@java.lang.SuppressWarnings({ "all", "unchecked", "rawtypes" })
public class ProductRecord extends org.jooq.impl.UpdatableRecordImpl<tech.codingclub.helix.tables.records.ProductRecord> implements org.jooq.Record4<java.lang.Long, java.lang.String, java.lang.Long, java.lang.String> {

	private static final long serialVersionUID = 1371594936;

	/**
	 * Setter for <code>public.product.id</code>.
	 */
	public void setId(java.lang.Long value) {
		setValue(0, value);
	}

	/**
	 * Getter for <code>public.product.id</code>.
	 */
	public java.lang.Long getId() {
		return (java.lang.Long) getValue(0);
	}

	/**
	 * Setter for <code>public.product.product_name</code>.
	 */
	public void setProductName(java.lang.String value) {
		setValue(1, value);
	}

	/**
	 * Getter for <code>public.product.product_name</code>.
	 */
	public java.lang.String getProductName() {
		return (java.lang.String) getValue(1);
	}

	/**
	 * Setter for <code>public.product.price</code>.
	 */
	public void setPrice(java.lang.Long value) {
		setValue(2, value);
	}

	/**
	 * Getter for <code>public.product.price</code>.
	 */
	public java.lang.Long getPrice() {
		return (java.lang.Long) getValue(2);
	}

	/**
	 * Setter for <code>public.product.image_link</code>.
	 */
	public void setImageLink(java.lang.String value) {
		setValue(3, value);
	}

	/**
	 * Getter for <code>public.product.image_link</code>.
	 */
	public java.lang.String getImageLink() {
		return (java.lang.String) getValue(3);
	}

	// -------------------------------------------------------------------------
	// Primary key information
	// -------------------------------------------------------------------------

	/**
	 * {@inheritDoc}
	 */
	@Override
	public org.jooq.Record1<java.lang.Long> key() {
		return (org.jooq.Record1) super.key();
	}

	// -------------------------------------------------------------------------
	// Record4 type implementation
	// -------------------------------------------------------------------------

	/**
	 * {@inheritDoc}
	 */
	@Override
	public org.jooq.Row4<java.lang.Long, java.lang.String, java.lang.Long, java.lang.String> fieldsRow() {
		return (org.jooq.Row4) super.fieldsRow();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public org.jooq.Row4<java.lang.Long, java.lang.String, java.lang.Long, java.lang.String> valuesRow() {
		return (org.jooq.Row4) super.valuesRow();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public org.jooq.Field<java.lang.Long> field1() {
		return tech.codingclub.helix.tables.Product.PRODUCT.ID;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public org.jooq.Field<java.lang.String> field2() {
		return tech.codingclub.helix.tables.Product.PRODUCT.PRODUCT_NAME;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public org.jooq.Field<java.lang.Long> field3() {
		return tech.codingclub.helix.tables.Product.PRODUCT.PRICE;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public org.jooq.Field<java.lang.String> field4() {
		return tech.codingclub.helix.tables.Product.PRODUCT.IMAGE_LINK;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public java.lang.Long value1() {
		return getId();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public java.lang.String value2() {
		return getProductName();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public java.lang.Long value3() {
		return getPrice();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public java.lang.String value4() {
		return getImageLink();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public ProductRecord value1(java.lang.Long value) {
		setId(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public ProductRecord value2(java.lang.String value) {
		setProductName(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public ProductRecord value3(java.lang.Long value) {
		setPrice(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public ProductRecord value4(java.lang.String value) {
		setImageLink(value);
		return this;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public ProductRecord values(java.lang.Long value1, java.lang.String value2, java.lang.Long value3, java.lang.String value4) {
		return this;
	}

	// -------------------------------------------------------------------------
	// Constructors
	// -------------------------------------------------------------------------

	/**
	 * Create a detached ProductRecord
	 */
	public ProductRecord() {
		super(tech.codingclub.helix.tables.Product.PRODUCT);
	}

	/**
	 * Create a detached, initialised ProductRecord
	 */
	public ProductRecord(java.lang.Long id, java.lang.String productName, java.lang.Long price, java.lang.String imageLink) {
		super(tech.codingclub.helix.tables.Product.PRODUCT);

		setValue(0, id);
		setValue(1, productName);
		setValue(2, price);
		setValue(3, imageLink);
	}
}
