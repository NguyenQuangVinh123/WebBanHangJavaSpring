create table CHUCVU(
	machucvu integer auto_increment,
    tenchucvu nvarchar(20),
    primary key (machucvu)
);

create table NHANVIEN(
	manhanvien integer auto_increment,
    hoten nvarchar(30),
    gioitinh bit,
    cmnd varchar(40),
    machucvu integer,
    email varchar(50),
    matkhau varchar(50),
    primary key (manhanvien),
    constraint FK_NHANVIEN_CHUCVU foreign key(machucvu) references CHUCVU(machucvu)
);

create table DANHMUCSANPHAM(
	madanhmuc integer auto_increment,
    tendanhmuc nvarchar(100),
    hinhdanhmuc text,
   
    primary key (madanhmuc)
);
create table SANPHAM(
	masanpham integer auto_increment,
    madanhmuc integer,
    tensanpham nvarchar(100),
    mota text,
    giatien varchar(50),
    hinhsanpham text,
    primary key (masanpham),
    constraint FK_SANPHAM_DANHMUC foreign key(madanhmuc) references DANHMUCSANPHAM(madanhmuc)
);
create table MAUSANPHAM(
	mamau integer auto_increment,
    tenmau nvarchar(50),
    primary key (mamau)
);
create table SIZESANPHAM(
	masize integer auto_increment,
	size nvarchar(50),
    
    primary key (masize)
);
create table CHITIETSANPHAM(
	machitietsanpham integer auto_increment,
    masanpham integer,
	masize integer,
    mamau integer,
    soluong integer,
    ngaynhap varchar(50),
    primary key (machitietsanpham),
	constraint FK_CHITIET_SANPHAM foreign key(masanpham) references SANPHAM(masanpham),
    constraint FK_CHITIET_SIZE foreign key(masize) references SIZESANPHAM(masize),
    constraint FK_CHITIET_MAUSANPHAM foreign key(mamau) references MAUSANPHAM(mamau)

);
create table KHUYENMAI(
	makhuyenmai integer auto_increment,
    tenkhuyenmai nvarchar(200),
    thoigianbatdau nvarchar(100),
    thoigianketthuc nvarchar(100),
	giagiam nvarchar(100),
	hinhkhuyenmai text,
    mota text,
    primary key (makhuyenmai)
);
create table CHITIETKHUYENMAI(
	makhuyenmai integer,
    masanpham integer,
    mota text,
    giatien varchar(50),
    hinhsanpham text,
    primary key (makhuyenmai,masanpham),
    constraint FK_KHUYENMAI_SANPHAM foreign key(masanpham) references SANPHAM(masanpham)
);
create table HOADON(
	mahoadon integer auto_increment,
    tenkhachhang nvarchar(200),
    sodt nvarchar(100),
    diachigiaohang nvarchar(200),
	tinhtrang bit,
	ngaylap nvarchar(50),
    primary key (mahoadon)
);
create table CHITIETHOADON(
	mahoadon integer,
    machitietsanpham integer,
    soluong integer,
    giatien varchar(200),
    primary key (mahoadon,machitietsanpham),
    constraint FK_CTHOADON_HOADON foreign key(mahoadon) references HOADON(mahoadon),
	constraint FK_CTHOADON_CTSANPHAM foreign key(machitietsanpham) references CHITIETSANPHAM(machitietsanpham)

);